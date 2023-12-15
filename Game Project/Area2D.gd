extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	print("it works")
	if body.has_method("knockback(force)"):
		var character = body as CharacterBody2D
		
		character.knockback(Vector2.RIGHT * 2000)
		
		queue_free()
	if body.has_method(" _on_body_exited(body)"):
		print("it works")
		var character = body as CharacterBody2D
		
		character.knockback(Vector2.RIGHT * 2000)
		
		queue_free()
