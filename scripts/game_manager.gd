extends Node2D
class_name GameManager

static var instance: GameManager = self

signal transit_to_next_scene
@onready var primary_camera: Camera2D = $PrimaryCamera

func _ready() -> void:
	instance = self

func transit():
	var temp = get_tree().current_scene.name
	match temp:
		"Intro":
			get_tree().change_scene_to_file("res://scenes/level_0.tscn")
		"Level0":
			get_tree().change_scene_to_file("res://scenes/level_1.tscn")
		"Level1":
			get_tree().change_scene_to_file("res://scenes/level_2.tscn")
