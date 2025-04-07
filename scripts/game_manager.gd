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
		"Level2":
			get_tree().change_scene_to_file("res://scenes/level_3.tscn")
		"Level3":
			get_tree().change_scene_to_file("res://scenes/level_4.tscn")
		"Level4":
			get_tree().change_scene_to_file("res://scenes/level_5.tscn")
		"Level5":
			get_tree().change_scene_to_file("res://scenes/level_6.tscn")
		"Level6":
			get_tree().change_scene_to_file("res://scenes/her.tscn")
		"Her":
			get_tree().change_scene_to_file("res://scenes/outro.tscn")
		"Outro":
			get_tree().change_scene_to_file("res://scenes/secret_0.tscn")
		"Secret0":
			get_tree().change_scene_to_file("res://scenes/secret_1.tscn")
		"Secret1":
			get_tree().change_scene_to_file("res://scenes/secret_2.tscn")
		"Secret2":
			get_tree().change_scene_to_file("res://scenes/secret_3.tscn")
		"Secret3":
			get_tree().change_scene_to_file("res://scenes/secret_4.tscn")
		"Secret4":
			get_tree().change_scene_to_file("res://scenes/secret_5.tscn")
		"Secret5":
			get_tree().change_scene_to_file("res://scenes/outro.tscn")
