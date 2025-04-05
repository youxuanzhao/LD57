extends Control

@onready var dialogue_player = $DialogueSound

func _ready() -> void:
	$d1.visible = false

func _on_checkpoint_1_body_entered(body: Node2D) -> void:
	dialogue_player.play()
	$d1.visible = true
	await get_tree().create_timer(2).timeout
	get_parent().get_parent().get_node("StaticBody2D").queue_free()
	get_parent().get_parent().get_node("B1").visible = true


func _on_checkpoint_2_body_entered(body: Node2D) -> void:
	GameManager.instance.transit_to_next_scene.emit()
