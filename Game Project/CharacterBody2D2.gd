extends CharacterBody2D


var speed = 2000
var gravity = 8000
var direction = Vector2()

var projectile_scene = preload("res://attack_2.tscn")
var can_shoot = true

var is_knockback = false
var knockback_force = Vector2.ZERO

var jumps = 0
var max_jumps = 2

func _process(delta):
	handle_movement(delta)
	handle_shooting()
	
func handle_movement(delta):
	velocity.y += gravity * delta
	
	if Input.is_action_pressed("player2left"):
		velocity.x = -speed
	elif Input.is_action_pressed("player2right"):
		velocity.x = speed
	else:
		velocity.x = 0
	
	if is_on_floor():
		jumps = 0
		
	if Input.is_action_just_pressed("player2up") and jumps < max_jumps:
		velocity.y = -5000
		jumps += 1
	
	if is_knockback:
		velocity = knockback_force
	else:
		move_and_slide()
		
	if Input.is_action_just_pressed("player2slam") and not is_on_floor():
		velocity.y = 4000
		
func handle_shooting():
	if Input.is_action_pressed("player2attack") and can_shoot:
		var projectile_instance = projectile_scene.instantiate()
		var player_position = position
		var spawn_offset = Vector2(-20, 0)
		
		var projectile = projectile_instance as CharacterBody2D
		projectile.position = player_position + spawn_offset
		projectile.set_direction(direction)
		get_parent().add_child(projectile)
		
		can_shoot = false
		$AttackTimer2.start()
		
func _on_attack_timer_2_timeout():
	can_shoot = true
	
func knockback(force):
	knockback_force = force
	is_knockback = true
	position.x -2000
	
func _on_knockback_finished(body):
	is_knockback = false
	velocity = Vector2.ZERO
	position.x -2000
