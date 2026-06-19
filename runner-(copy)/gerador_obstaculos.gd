extends Node2D

var ObstaculoScene = preload("res://Obstaculo.tscn")
var tempo = 0.0

func _process(delta):
	tempo += delta

	if tempo >= 2:
		tempo = 0
		var obstaculo = ObstaculoScene.instantiate()
		obstaculo.position = Vector2(800, 440)
		obstaculo.scale = Vector2(0.5, 0.5)
		add_child(obstaculo)
