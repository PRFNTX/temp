extends Node

export(int) var reduction = 1

func activate(Game,entity,damage):
	return damage - reduction

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
