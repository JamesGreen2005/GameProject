extends Node2D

var apply_power_up(CharacterBody2D)

func _on_PowerUp_body_entered(CharacterBody2D):
	if CharacterBody2D.is_in_group("enemy1","enemy2"):
		apply_power_up(CharacterBody2D)
		queue_free()  # Remove the power-up from the scene
		var duration = 5  # Power-up duration in seconds
