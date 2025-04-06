extends Node2D


func _on_checkpoint_1_body_entered(body: Node2D) -> void:
	GameManager.instance.transit_to_next_scene.emit()


func _on_checkpoint_2_body_entered(body: Node2D) -> void:
	get_parent().get_node("Player").position.y = -300
