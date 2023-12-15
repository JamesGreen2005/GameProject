extends CharacterBody2D

var speed = 10000
var direction = Vector2()
var gravity = 500

func _process(delta):
	velocity.y += gravity * delta
	velocity.x = -speed
	move_and_slide()

func set_direction(new_direction):
	direction = new_direction.normalized()
	
func _on_body_entered(body):
	if body.has_method("knockback(force)"):
		print("it works")
		var character = body as CharacterBody2D
		
		character.knockback(Vector2.RIGHT * 2000)
		
		queue_free()
	if body.has_method(" _on_body_exited(body)"):
		print("it works")
		var character = body as CharacterBody2D
		
		character.knockback(Vector2.RIGHT * 2000)
		
		queue_free()
