extends Node2D


func _on_door_body_entered(body: Node2D) -> void:
	GameManager.instance.transit_to_next_scene.emit()
