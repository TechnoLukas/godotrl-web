extends Node3D

func _ready():
	randomize()

func _on_ring_body_entered(body):
	$Player.game_over()
