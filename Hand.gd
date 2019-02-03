extends Control

onready var globals = get_node('/root/master')
onready var game = get_parent()
var player_object

var card_nodes = []

func _ready():
	get_parent().connect('UpdateState', self , 'updateState')


func updateState(newState, keys):
	if newState.keys().has('frame_card'):
		if newState['frame_card']==null:
			setState({'selected_card':null})

### STATE
var state = {'hovered':0,'num_cards':0, 'selected_card':null}

func setState(newState):
	for key in newState.keys():
		call(key, newState[key])

###STATE FUNCS
func hovered(num):
	state['hovered'] = num
	arrange_cards()

var area = self.rect_position
const wid = 540
func num_cards(num):
	state['num_cards'] = num
	arrange_cards()

export(Color,RGB) var selected_color = Color(0,0,0)
var base_col
func selected_card(num):
	state['selected_card']=num
	var children = get_children()
	for child in children:
		modulate = base_col
	if num!=null:
		children[num].modulate=selected_color
###

func arrange_cards():
	var num = card_nodes.size()
	var ind = 0
	var dx = 90
	for card in card_nodes:
		if num <6:
			card.rect_position.x = ind*dx
			card.rect_position.y = 0
		else:
			if ind<state['hovered']:
				card.rect_position.x=ind*floor((5*90)/num)
				card.rect_position.y=0
			elif ind==state['hovered']:
				card.rect_position.x=(ind-1)*floor((5*90)/(num))+85
				card.rect_position.y=0
			else:
				card.rect_position.x=(ind-2)*floor((5*90)/num)+170
				card.rect_position.y=0
		ind+=1

func assign_player(node):
	player_object = node
	

func get_costs(card_num):
	var card = card_nodes[card_num].get_node('Card')
	return {'gold':card.cost_gold,'faeria':card.cost_faeria}

func do_update():
	for node in card_nodes:
		node.queue_free()
	card_nodes = []
	var ind = 0
	for card in player_object.Hand:
		var newCardNode = globals.card_resources[card].instance()
		newCardNode.rect_scale = Vector2(1.3,1.2)
		newCardNode.set_process_input(true)
		newCardNode.in_hand(true, ind)
		newCardNode.connect('mouse_entered',self,'on_mouse_enter')
		newCardNode.connect('mouse_button',self,'on_mouse_button')
		card_nodes.push_back(newCardNode)
		add_child(newCardNode)
		base_col = newCardNode.modulate
		ind+=1
	
	setState({'num_cards':card_nodes.size()})
	


func on_mouse_enter(num):
	if num!=state['hovered']:
		setState({'hovered':num})

var buildTypes=['buildAny','buildLake', 'buildTree','buildHill','buildSand']
func on_mouse_button(num):
	var card = card_nodes[num].get_node('Card')
	setState({'selected_card':num})
	game.setState({'preview_card':card.card_name})
	if (card.is_event and game.state['current_turn']==0 and game.actionReady
		and (
			(card.play_morning and game.state.clock_time==0)
			or (card.play_evening and game.state.clock_time==1)
			or (card.play_night and game.state.clock_time==2)
		)
	):
		game.setState({'frame_card':card.card_name,'action':'hand_card','active_unit':null})
		## add to cast box
		## for each possible action add a button to do that thing
		##if that thing is an action, start it as an action
		## use the same process for board entities
		pass
	elif (game.state['current_turn']==0 and game.actionReady
		and (
			(card.play_morning and game.state.clock_time==0)
			or (card.play_evening and game.state.clock_time==1)
			or (card.play_night and game.state.clock_time==2)
		)
	):
		game.setState({'frame_card': card.card_name})
		game.start_build_action(card.cost_gold,card.cost_faeria,{card.lands_type:card.lands_num},num,card_nodes[num],buildTypes[card.lands_type] )
	else:
		game.setState({'frame_card': card.card_name})

func _on_cast_pressed():
	pass
