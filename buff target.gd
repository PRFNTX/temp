extends Node


export(int, "Any","Owner","Opponent") var player = 1
export(int,"Unit","Creature","Building") var type = 1

export(int) var health = 1
export(int) var attack = 0
export(int) var energy = 0
export(bool) var convert_land = 1

export(bool) var then_free = true

var entity
var Game
func init(_entity):
	entity = _entity
	Game = entity.Game

var val

func activate(_Game, _entity,_val):
	Game = _Game
	entity = _entity
	val=_val
	if entity.Owner==0:
		Game.delegate_action(entity.Hex.id,get_parent().get_name()+'/'+get_name())
	return true


func conditions(hex):
	
	if not hex.has_unit():
		return false
	if player==0:
		if type == 0:
			return true
		elif type==1 and hex.unit_is_creature():
			return true
		elif type==2 and hex.unit_is_building():
			return true
	else:
		if type == 0:
			return (player==1 and hex.has_friendly_unit(entity.Owner)) or (player==2 and hex.has_opposing_unit(entity.Owner))
		elif type==1 and hex.unit_is_creature():
			return (player==1 and hex.has_friendly_unit(entity.Owner)) or (player==2 and hex.has_opposing_unit(entity.Owner))
		elif type==2 and hex.unit_is_building():
			return (player==1 and hex.has_friendly_unit(entity.Owner)) or (player==2 and hex.has_opposing_unit(entity.Owner))
	return false

func targeting():
	for hex in get_tree().get_nodes_in_group("Hex"):
		if conditions(hex):
			hex.setState({'cover':hex.targetOther , 'target' :true})
		else:
			hex.setState({'cover':Color(0,0,0,0) , 'target' :false})

func complete(target, set_state=null):
	
	var local = true
	var state = Game.get_state()
	if not set_state==null:
		state=set_state
		local= false
	
	var hex = Game.get_hex_by_id(target)
	hex.get_unit().life_change(health)
	hex.get_unit().Unit.current_attack+=attack
	hex.get_unit().Unit.current_energy+=energy
	if convert_land:
		hex.setState({'hex_owner':entity.Owner})
	
	if local:
		Game.send_action('delegate',remote_convert(target),{'delegate_id':remote_convert(entity.Hex.id), 'delegate_node':get_parent().get_name()+'/'+get_name()})
	
	entity.queue_free()
	Game.actionDone()
	return true

func remote_convert(hex_id):
	if hex_id==0:
		return 0
	else:
		return 45-hex_id

func cancel_action():
	pass

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
