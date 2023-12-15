extends CharacterBody2D


const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var speed = 200

func apply_power_up(enemy2):
	enemy2.speed *= 2  # Double the player's speed (adjust as needed)

	await(get_tree().create_timer(5),"5")
	enemy2.speed /= 2

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	if Input.is_action_just_pressed("slam2") and not is_on_floor():
		velocity.y = 400
		
	if Input.is_action_just_pressed("jump") and not is_on_floor():
		velocity.y = -200
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)
		
	move_and_slide()
