extends Control

@onready var next_scene = load("res://scenes/levels/level_1.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var sound_button = $VBoxContainer/CenterBottom/VBoxContainer/Sound
	sound_button.button_pressed = ProjectControls.is_audio_master_on()

func _on_start_pressed():
	get_tree().change_scene_to_packed(next_scene)

func _on_fullscreen_pressed():
	ProjectControls.toggle_fullscreen()

func _on_sound_toggled(toggled_on):
	ProjectControls.set_audio_master(toggled_on)
