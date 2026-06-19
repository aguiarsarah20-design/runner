extends Area2D

var velocidade = 200

func _process(delta):
	position.x -= velocidade * delta
