class_name MainMenu
extends Control



@onready var start_button = $MarginContainer/HBoxContainer/VBoxContainer/Start_Button
@onready var survivors_game = preload("res://survivors_game.tscn") as PackedScene

func _ready() -> void:
	start_button.button_down.connect(on_start_pressed)

func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(survivors_game)
