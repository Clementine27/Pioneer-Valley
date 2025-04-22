extends StaticBody2D
#signal onEnter
@onready var text_box = $TextBox
@onready var detection_area = $Area2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text_box.hide() #hide box initially 
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func _on_area_2d_area_entered(area: Area2D) -> void:
	print("Jorge entered the area:", area.name)  # Debugging line
	#Check if the parent of area2D is the mainChara
	#Ensure if it is the player
	if area.get_parent().is_in_group("mainCharacter"):
		print("Entered")
		text_box.show()
	else:
		print("It is not in group 'mainCharacter'")
	
	


func _on_area_2d_area_exited(area: Area2D) -> void:
	print("Jorge exited the area:", area.name)  # Debugging line
	text_box.hide()
