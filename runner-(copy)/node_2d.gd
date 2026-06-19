extends Node2D

@export var velocidade: int

func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	$Status/Vida.text = "Vida: " + str($Personagem.vida)
	$Status/Pontos.text = "Pontos: " + str($Personagem.pontos)

	$Fundo.position.x -= velocidade * delta * 0.05
	$Fundo2.position.x -= velocidade * delta * 0.05

	if $Fundo.position.x < -1152:
		$Fundo.position.x = 1152

	if $Fundo2.position.x < -1152:
		$Fundo2.position.x = 1152

	$Chao.position.x -= velocidade * delta * 2
	$Chao2.position.x -= velocidade * delta * 2

	if $Chao.position.x < -1152:
		$Chao.position.x = 1152

	if $Chao2.position.x < -1152:
		$Chao2.position.x = 1152
