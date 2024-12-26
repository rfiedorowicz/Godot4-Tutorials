extends Control

@onready var main_scene = preload("res://scenes/menus/main_menu.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false
	var sound_button = $CenterContainer/VBoxContainer/Sound
	sound_button.button_pressed = ProjectControls.is_audio_master_on()

func run():
	get_tree().paused = true
	visible = true

func _on_continue_pressed():
	visible = false
	get_tree().paused = false

func _on_sound_toggled(button_pressed):
	ProjectControls.set_audio_master(button_pressed)

func _on_fullscreen_pressed():
	ProjectControls.toggle_fullscreen()

func _on_main_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_packed(main_scene)
