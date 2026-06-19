extends CharacterBody2D

var vida = 5
var pontos = 0

const FORCA_PULO = -620

func _physics_process(delta):
	if not is_on_floor():
		velocity += get_gravity() * delta

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = FORCA_PULO

	move_and_slide()
