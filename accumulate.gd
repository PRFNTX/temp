extends Node

export(int,"Any","Owner","Opponent") var player = 2
export(int,"Unit","Creature","Building") var type = 1

var entity
var Game
func init(_entity):
	entity = _entity
	Game = entity.Game

var val

func activate(_Game, _entity, _val):
	if entity.get_energy()>=entity.Unit.max_energy:
		Game = _Game
		entity = _entity
		val=_val
		if get_child_count()>0:
			get_children()[0].activate(Game,entity,val)
		entity.on_death()





func _ready():
	pass


