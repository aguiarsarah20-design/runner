extends Node2D

var ItemScene = preload("res://Item.tscn")
var tempo = 0

func _process(delta):
	tempo += delta

	if tempo >= 3:
		tempo = 0

		var item = ItemScene.instantiate()
		item.position = Vector2(800, 150)
		add_child(item)
