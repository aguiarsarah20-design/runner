extends Area2D

var velocidade = 200

func _process(delta):
	position.x -= velocidade * delta

func _on_body_entered(body):
	body.vida -= 1
	queue_free()
