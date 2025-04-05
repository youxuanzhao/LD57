extends Control

@onready var dialogue_player = $DialogueSound

func _ready() -> void:
	$d1.visible = false
	$d2.visible = false
	$d3.visible = false
	$d4.visible = false

func _on_checkpoint_1_body_entered(body: Node2D) -> void:
	dialogue_player.play()
	$d1.visible = true


func _on_checkpoint_2_body_entered(body: Node2D) -> void:
	dialogue_player.play()
	$d2.visible = true


func _on_checkpoint_3_body_entered(body: Node2D) -> void:
	dialogue_player.play()
	$d3.visible = true


func _on_checkpoint_4_body_entered(body: Node2D) -> void:
	dialogue_player.play()
	$d4.visible = true
