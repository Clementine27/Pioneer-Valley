class_name Main_Menu
extends Control 

@onready var start_button = $MarginContainer/CenterContainer/VBoxContainer2/CenterContainer/HBoxContainer/Start as Button
@onready var menu_button = $MarginContainer/CenterContainer/VBoxContainer2/CenterContainer/HBoxContainer/Menu as Button
@onready var exit_button = $MarginContainer/CenterContainer/VBoxContainer2/CenterContainer/HBoxContainer/Exit as Button 

@export var start_level = preload("res://scene/Main.tscn") as PackedScene
@export var menu_scene = preload("res://scene/MainMenu/menu_scene.tscn") as PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_button.button_down.connect(_on_start_button_down)
	menu_button.button_down.connect(_on_menu_button_down)
	exit_button.button_down.connect(_on_exit_button_down)


func _on_start_button_down() -> void:
	get_tree().change_scene_to_packed(start_level)


func _on_menu_button_down() -> void:
	get_tree().change_scene_to_packed(menu_scene)



func _on_exit_button_down() -> void:
	get_tree().quit()
