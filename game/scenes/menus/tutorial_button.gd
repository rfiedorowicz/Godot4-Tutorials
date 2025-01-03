@tool
extends MarginContainer

@export var margin_value := 0
@export var tutorial_scene := PackedScene
@export var tutorial_image := Image

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	add_theme_constant_override("margin_top", margin_value)
	add_theme_constant_override("margin_left", margin_value)
	add_theme_constant_override("margin_bottom", margin_value)
	add_theme_constant_override("margin_right", margin_value)
	
	$TextureButton.texture_normal = tutorial_image

func _on_texture_button_pressed() -> void:
	print("tutorial scene")
	print(tutorial_scene.resource_path)
