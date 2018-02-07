
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"
onready var globals = get_node('/root/master')

var BoardEntity = load('res://BoardEntity.tscn')
var OrbEntity = load('res://Cards/entities/orb_entity.tscn')
var WellEntity = load('res://Cards/entities/well_entity.tscn')

#signal SpawnFaeria
signal UpdateState
signal GameStart
signal TurnStart
signal ActionPhase
signal TurnEnd

var players = [null, null]


func set_player(val):
	setState({'current_turn':val})



###### current_turn will be set to 0 during local players turn and 1 during remote players turn
var state={"action":"", 'current_turn':0,'active_unit':null,'clock_time':0,'hovered':null,'building_card':null}

var actionTimer

func _init(initial_state={}):
	pass


#STATE 
func setState(obj):
	for key in obj.keys():
		call(key, obj[key])
		#call 'setters' instead?
	emit_signal("UpdateState",state,obj.keys())

######## STATE FUNCTIONS
func action(val):
	state['action'] = val

func current_turn(val):
	state['current_turn'] = val
	
	

func active_unit(unit_hex_id):
	var unit = get_unit_by_hex(get_hex_by_id(unit_hex_id))
	if !(state['active_unit']==null):
		get_unit_by_hex(get_hex_by_id(state['active_unit'])).setState({'active':false})
	state['active_unit']=unit_hex_id
	if !(unit_hex_id==null):
		unit.setState({'active':true})

const MORNING=0
const EVENING=1
const NIGHT=2
func clock_time(val):
	$Clock.frame=val
	#if val == MORNING:
	#	emit_signal('SpawnFaeria')
	state['clock_time']=val

func hovered(hex):
	state['hovered'] = hex

func building_card(card):
	state['building_card'] = card

################

func create_player(num):
	var res_playerObject = load('res://PlayerObject.tscn')
	var p = res_playerObject.instance()
	add_child(p)
	if num==0:
		p.position=$pointP1.position
	else:
		p.position=$pointP2.position
	p.onCreate(self,num)
	if !globals.deck_list==null and globals.deck_list.keys().size()>0 and num==0:
		p.Deck = globals.deck_list[globals.Deck]
	return p

var ready = false
func _ready():
	set_process_input(true)
	
	players[0]=create_player(0)
	players[1]=create_player(1)
	
	$Hand.assign_player(players[0])
	players[0].hand_object=$Hand
	
	setState({'current_turn':0})
	actionTimer = $actionTimer
	
	### spawn starting structures
	var ORB = 2
	var WELL = 8
	for hex in get_tree().get_nodes_in_group('Hex'):
		if hex.hexType.child.type==ORB:
			var starting_entity = BoardEntity.instance()
			hex.get_node('hexEntity').add_child(starting_entity)
			starting_entity.possess(OrbEntity,hex,hex.initial_owner)
			starting_entity.Game =self
		if hex.hexType.child.type==WELL:
			var starting_entity = BoardEntity.instance()
			hex.get_node('hexEntity').add_child(starting_entity)
			starting_entity.possess(WellEntity,hex,hex.initial_owner)
			starting_entity.Game =self
			#starting_entity.spawn_faeria()
	
	set_player(globals.player_num)
	emit_signal('GameStart')
	emit_signal('TurnStart', state['current_turn'])
	emit_signal('ActionPhase', state['current_turn'])
	ready = true

func change_turns():
	if state['current_turn'] == 0:
		send_action('change_turns',0,{})
	cancelAction()
	emit_signal("TurnEnd", state['current_turn'])
	var current_time = state['clock_time']
	setState({'current_turn':(state['current_turn']+1)%2,'action':"",'active_unit':null,'clock_time':(current_time+1)%3})
	emit_signal("TurnStart", state['current_turn'])
	emit_signal("ActionPhase", state['current_turn'])
	

var actionReady = true
var complete = true
func _input(event):
	if players[int(state['current_turn'])].actions>0 and actionReady and ready:
		if event.is_action("card"):
			actionReady=false
			complete = false
			startTimer()
			actionCard()
		if event.is_action("land") and check_valid_action('actionLand'):
			actionReady=false
			complete = false
			startTimer()
			setState({"action":"actionLand"})
		if event.is_action("tree") and check_valid_action('actionTree'):
			actionReady=false
			complete = false
			startTimer()
			setState({"action":"actionTree"})
		if event.is_action("lake") and check_valid_action('actionLake'):
			actionReady=false
			complete = false
			startTimer()
			setState({"action":"actionLake"})
		if event.is_action("hill") and check_valid_action('actionHill'):
			actionReady=false
			complete = false
			startTimer()
			setState({"action":"actionHill"})
		if event.is_action("sand")  and check_valid_action('actionSand'):
			actionReady=false
			complete = false
			startTimer()
			setState({"action":"actionSand"})
		if event.is_action("coin"):
			actionReady=false
			complete = false
			startTimer()
			actionCoin()
	elif event.is_action("cancel"):
		cancelAction()
		startTimer()



var building_card_ind


#func get_hand_card(ind):
#	return players[state['current_turn']].Hand[ind]

func start_unit_action(type):
	startBasictimeout()
	if actionReady and check_valid_action(type) and state['active_unit']!=null:
		actionReady=false
		complete = false
		startTimer()
		setState({"action":type})

func start_build_action(gold, faeria, lands,card_num, card, buildType):
	if actionReady and players[state['current_turn']].has_resource(gold,faeria,lands):
		setState({'building_card':card.get_name()})
		building_card_ind = card_num
		actionReady=false
		complete=false
		startTimer()
		setState({'action':buildType})

func activate(unit):
	startBasictimeout()
	if unit.Owner==state['current_turn'] and actionReady and state['active_unit']!=unit.Hex.id:
		setState({'active_unit':unit.Hex.id})
		unit.Unit.on_select(self, unit.Hex)


func completeAction(target):
	if can_do:
		call(state["action"],target.id)

func actionDone():
	setState({"action":"",'active_unit':null})
	complete = true

func cancelAction():
	setState({"action":"",'active_unit':null})
	complete = true


##ACTIONS

func moveBase(target, set_state=null):
	var local = true
	if !set_state==null:
		var state=set_state
		local=false
	var hex_target = get_hex_by_id(target)
	startBasictimeout()
	var unit = get_unit_by_hex(get_hex_by_id(state['active_unit']))
	unit.on_move(hex_target.get_node('hexEntity'))
	#unit.rect_position = target.get_node('hexEntity/pos').position
	unit.Hex=hex_target
	unit.use_energy()
	if local:
		send_action('moveBase',45-target,{'active_unit':state['active_unit']})
	
	if check_valid_action(unit.Unit.get_action_name('Attack')):
		actionReady=true
		unit.Unit.start_attack(self)
	else:
		actionDone()

func AttackAdjOrCollect(target, set_state=null):
	var local = true
	if !set_state==null:
		var state=set_state
		local= false
	var unit = get_unit_by_hex(get_hex_by_id(state['active_unit']))
	unit.on_attack(target.get_node('hexEntity').get_node('BoardEntity'))
	if local:
		send_action('AttackAdjOrCollect',45-target,{'active_unit':state['active_unit']})
	actionDone()

func AttackAdj(target, set_state=null):
	var local = true
	if !set_state==null:
		var state=set_state
		local = false
	var unit = get_unit_by_hex(get_hex_by_id(state['active_unit']))
	unit.on_attack(target.get_node('hexEntity').get_child())
	if local:
		send_action('AttackAdj',45-target,{'active_unit':state['active_unit']})
	actionDone()

func Collect(target, set_state=null):
	var local = true
	if !set_state==null:
		var state=set_state
		local = false
	var unit = get_unit_by_hex(get_hex_by_id(state['active_unit']))
	unit.on_attack(target.get_node('hexEntity').get_child())
	if local:
		send_action('Collect',45-target,{'active_unit':state['active_unit']})
	actionDone()

func buildAny(target, set_state=null):
	var local = true
	if !set_state==null:
		var state=set_state
		local = false
	
	var costs = {
		'gold': globals.card_instances[state['building_card']].get_node('Card').cost_gold,
		'faeria':globals.card_instances[state['building_card']].get_node('Card').cost_faeria
	}
	
	if players[state['current_turn']].pay_costs(costs['gold'],costs['faeria']):
		## replcae with actual board entity
		var child_card = globals.card_instances[state['building_card']].get_node('Card')
		if local:
			players[state['current_turn']].discard_hand(building_card_ind)
		else:
			## remove 1 card from enemy hand counter
			pass
		var entity = BoardEntity.instance()
		target.get_node('hexEntity').add_child(entity)
		entity.possess(child_card.board_entity,get_hex_by_id(target),state['current_turn'])
		entity.Game =self
	if local:
		send_action('BuildAny', 45-target,{'active_unit':state['active_unit'],'building_card':state['building_card']})
	actionDone()

func actionLand(target, set_state=null):
	var local = true
	if !set_state==null:
		var state=set_state
		local = false
	if (players[state['current_turn']].useAction(1)):
		get_hex_by_id(target).affectState({'hex_type':2}, state['current_turn'])
		players[state['current_turn']].modLands('land',1)
	if local:
		send_action('BuildAny', 45-target,{})
	actionDone()

func actionLake(target, set_state=null):
	var local = true
	if !set_state==null:
		var state=set_state
		local = false
	if (players[state['current_turn']].useAction(1)):
		get_hex_by_id(target).affectState({'hex_type':3}, state['current_turn'])
		players[state['current_turn']].modLands('lake',1)
	if local:
		send_action('BuildAny', 45-target,{})
	actionDone()

func actionTree(target, set_state=null):
	var local = true
	if !set_state==null:
		var state=set_state
		local = false
	if (players[state['current_turn']].useAction(1)):
		get_hex_by_id(target).affectState({'hex_type':4}, state['current_turn'])
		players[state['current_turn']].modLands('tree',1)
	if local:
		send_action('BuildAny', 45-target,{})
	actionDone()

func actionHill(target, set_state=null):
	var local = true
	if !set_state==null:
		var state=set_state
		local = false
	if (players[state['current_turn']].useAction(1)):
		get_hex_by_id(target).affectState({'hex_type':5}, state['current_turn'])
		players[state['current_turn']].modLands('hill',1)
	if local:
		send_action('BuildAny', 45-target,{})
	actionDone()

func actionSand(target, set_state=null):
	var local = true
	if !set_state==null:
		var state=set_state
		local = false
	if (players[state['current_turn']].useAction(1)):
		get_hex_by_id(target).affectState({'hex_type':6}, state['current_turn'])
		players[state['current_turn']].modLands('sand',1)
	if local:
		send_action('BuildAny', 45-target,{})
	actionDone()

func actionCoin(target, set_state=null):
	var local = true
	if !set_state==null:
		var state=set_state
		local = false
	print('coin')
	if (players[state['current_turn']].useAction(1)):
		print('coin 2')
		players[state['current_turn']].modCoin(1)
		complete=true
	if local:
		send_action('BuildAny', 0,{})
	actionDone()

func actionCard(target, set_state=null):
	var local = true
	if !set_state==null:
		var state=set_state
		local = false
	if players[state['current_turn']].cards>0:
		if (players[state['current_turn']].useAction(1)):
			players[state['current_turn']].drawCard()
			complete=true
	if local:
		send_action('BuildAny', 0,{})
	actionDone()


	
###############
### MESSAGE FUNCTIONS

func send_action(type,target, loc_state):
	globals.send_msg({'game_action':{
		'player':(state['current_turn']+1)%2,
		'type':type,
		'target':target,
		'state':loc_state
	}})

func deck_cards(val):
	players[1].deck_init(val)

func game_action(val):
	call(val.type,val.target,val.state)

##
#HELPERS
func get_hex_by_id(id):
	for hex in get_tree().get_nodes_in_group("Hex"):
		if hex.id == id:
			return hex

func get_unit_by_hex(hex):
	return hex.get_node('hexEntity/BoardEntity')

""" added instances to globals
func get_card_properties_by_name(card,props):
	var card_instance = globals.card_resources[name].instance()
	var ret = {}
	for prop in props:
		ret[prop] = card[prop]
	card_instance.queue_free()
	return ret
"""



#### VERFIFICATIONS

func check_valid_action(action):
	var targets = false
	for hex in get_tree().get_nodes_in_group('Hex'):
		if hex.action(action,state['current_turn'],true):
			targets = true
	print("IS VALID ACTION:")
	print(targets)
	return targets


func startTimer():
	#actionTimer.wait_time=0.4
	actionTimer.start()

var can_do = true
func startBasictimeout():
	can_do = false
	set_process_input(false)
	$basic_timeout.start()

func _on_Timer_timeout():
	print('TIMER')
	if complete:
		actionReady=true
	else:
		startTimer()


func _on_endturn_pressed():
	change_turns()


func _on_basic_timeout_timeout():
	can_do=true
	set_process_input(true)
