extends Node2D

var power_up_scene=preload("res://powerup.tscn")

func spawn_power_up(position):
	var power_up_instance = power_up_scene.instance()
	power_up_instance.position = position
	add_child(power_up_instance)
