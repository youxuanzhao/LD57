extends Control

@onready var dialogue_player = $DialogueSound

func _ready() -> void:
	$d1.visible = false

func _on_checkpoint_1_body_entered(body: Node2D) -> void:
	dialogue_player.play()
	$d1.visible = true
	get_parent().get_parent().get_node("Checkpoint1").queue_free()
	await get_tree().create_timer(2).timeout
	


func _on_checkpoint_2_body_entered(body: Node2D) -> void:
	GameManager.instance.transit_to_next_scene.emit()
