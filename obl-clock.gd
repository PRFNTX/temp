extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
export(int) var gold_cost = 0
export(int) var action_cost = 1
export(int) var faeria_cost = 0
export(int) var energy_cost = 1

export(bool) var random = true

export(int, 'Owner', 'Opponent') var target_player = 1 

var entity
var Game
func init(_entity):
	entity = _entity
	Game = entity.Game

func activate(_Game, _entity, val):
	Game = _Game
	entity=_entity
	if verify_costs():
		pay_costs()
		Game.setState({'clock_time':(Game.state['clock_time']+1)%3})

func verify_costs():
	var ret = true
	if entity.get_energy()>=energy_cost and Game.players[entity.Owner].has_resource(gold_cost,faeria_cost,{0:0}) and Game.players[entity.Owner].actions>=action_cost:
		return true
	else:
		return false

func pay_costs():
	entity.use_energy(energy_cost)
	Game.players[entity.Owner].pay_costs(gold_cost,faeria_cost)
	Game.players[entity.Owner].useAction(action_cost)
	

