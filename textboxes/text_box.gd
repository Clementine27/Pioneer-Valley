extends MarginContainer

#signal stableState
#signal onEnterLabel
@onready var label = $MarginContainer
@onready var timer = $"Timer (LetterDisplayTimer)"
#
#const MAX_WIDTH = 256
##
#var text = ""
#var letter_index = 0
##
#var letter_time = 0.03
#var space_time = 0.06
#var punctuation_time = 0.2
#
#signal finished_displaying() #Textbox can tell the dialogue manager when it's done
#
#func display_text(text_to_display: String):
	#text = text_to_display
	#label.text =  text_to_display
	#
	#await resized
	#custom_minimum_size = min(size.x, MAX_WIDTH)
	#
	#if size.x > MAX_WIDTH:
		#label.autowrap.node - Text

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
