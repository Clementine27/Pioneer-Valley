extends CharacterBody2D

const SPEED = 300.0
#We command then move goose_test to the script 
@onready var sprite_2d = $goose_test
var last_direction_x = 1 #facing right

func _ready() -> void:
	add_to_group("mainCharacter")
	print("Player in groups:", get_groups()) 
	
func _physics_process(_delta: float) -> void:
	#Animations:

	var input_direction = Vector2.ZERO # Initialize to zero

	if Input.is_action_pressed("right"):
			input_direction.x = 1
		
	if Input.is_action_pressed("left"):
			input_direction.x = -1
		
	if Input.is_action_pressed("up"):
			input_direction.y = -1
	
	if Input.is_action_pressed("down"):
			input_direction.y = 1

	input_direction = input_direction.normalized()
	velocity = input_direction * SPEED
	
	move_and_slide()

	#Animation
	if input_direction != Vector2.ZERO:
		sprite_2d.play("walk")
	else:
		sprite_2d.play("default")
		
	#Remember the x-value of direction when Jorge moves
	if input_direction.x != 0:
		last_direction_x = input_direction.x
		
	#Flip Jorge based on its last remembered direction: LEFT
	sprite_2d.flip_h = last_direction_x < 0
		
		
