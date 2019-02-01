extends Node

export(String) var ab_name = ""
export(String) var ab_description = ""

export(int) var gold_cost = 0
export(int) var action_cost = 0
export(int) var faeria_cost = 1
export(int) var energy_cost = 0

export(int) var damage = -2
export(int,"Owner","Opponent") var target = 1

var Game
var entity

func init(_entity):
	entity = _entity
	Game = entity.Game

func activate(_Game, _entity, unsused):
	Game=_Game
	entity=_entity
	if verify_costs():
		pay_costs()
		var hex
		
		if target == entity.Owner:
			hex = Game.get_hex_by_id(1)
		elif target != entity.Owner:
			hex = Game.get_hex_by_id(44)
		
		if hex.has_unit():
			hex.get_unit().life_change(damage)
		Game.send_activation(entity.Hex.id, get_relative_path())

func get_relative_path():
	return get_parent().get_name()+'/'+get_name()

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
