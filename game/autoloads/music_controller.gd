extends Node

# @onready var main_music = preload("res://resources/audio/music/music.mp3")

func stop_music():
	$AudioStreamPlayer.stop()

func start_music():
	# $AudioStreamPlayer.stream = main_music
	$AudioStreamPlayer.play()
