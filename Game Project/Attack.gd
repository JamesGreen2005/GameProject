extends CharacterBody2D

var speed = 10000
var direction = Vector2()
var gravity = 500

func _process(delta):
	velocity.y += gravity * delta
	velocity.x = speed
	move_and_slide()

func set_direction(new_direction):
	direction = new_direction.normalized()

