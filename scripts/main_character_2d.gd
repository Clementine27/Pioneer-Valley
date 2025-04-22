extends CharacterBody2D

const SPEED = 100.0

const JUMP_VELOCITY = -400.0
#We command then move goose_test to the script 
@onready var sprite_2d = $goose_test

#func get_input():
	#var input_direction = Input.get_vector("left", "right", "up", "down")
	#velocity = input_direction * SPEED
	#prite_2d.animation = "walk"
func _ready() -> void:
	add_to_group("mainCharacter")
	print("Player in groups:", get_groups()) 
	
func _physics_process(delta: float) -> void:
	#Animations:
	
	if Input.is_action_pressed("ui_accept") and (not is_on_floor()):
		velocity += get_gravity() * delta
		sprite_2d.play("fly")

	# Handle jump.
	if Input.is_action_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		print("jump was just pressed")
		sprite_2d.play("fly")

	var input_direction = Vector2.ZERO # Initialize to zero
	if is_on_floor():
		if Input.is_action_pressed("right"):
			input_direction.x = 1
			velocity = input_direction * SPEED
			sprite_2d.play("walk")
		
		if Input.is_action_pressed("left"):
			input_direction.x = -1
			velocity = input_direction * SPEED
			sprite_2d.play("walk")
		
		if Input.is_action_pressed("up"):
			input_direction.y = -1
			velocity = input_direction * SPEED
			sprite_2d.play("walk")
	
		if Input.is_action_pressed("down"):
			input_direction.y = 1
			velocity = input_direction * SPEED
			sprite_2d.play("walk")
	else:
		if Input.is_action_pressed("right"):
			input_direction.x = 1
			velocity = input_direction * SPEED
			sprite_2d.play("walk")
		
		if Input.is_action_pressed("left"):
			input_direction.x = -1
			velocity = input_direction * SPEED
			sprite_2d.play("walk")
		
		if Input.is_action_pressed("up"):
			input_direction.y = -1
			velocity =input_direction  * SPEED
			sprite_2d.play("walk")
	
		if Input.is_action_pressed("down"):
			input_direction.y = 1
			velocity = input_direction * SPEED
			sprite_2d.play("walk")
	
	move_and_slide()
	
	#velocity = input_direction * SPEED 
	#=> Cannot put the velocity here because it would affect 
	#vertical velocity (for jumping) bc it is overwritten 
	
	var isLeft = velocity.x<0
	sprite_2d.flip_h = isLeft
