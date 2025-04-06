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
	get_parent().get_parent().get_node("Node2D/Checkpoint1").queue_free()


func _on_checkpoint_2_body_entered(body: Node2D) -> void:
	dialogue_player.play()
	$d2.visible = true
	get_parent().get_parent().get_node("Node2D/Checkpoint2").queue_free()


func _on_checkpoint_3_body_entered(body: Node2D) -> void:
	dialogue_player.play()
	$d3.visible = true
	get_parent().get_parent().get_node("Node2D/Checkpoint3").queue_free()


func _on_checkpoint_4_body_entered(body: Node2D) -> void:
	dialogue_player.play()
	$d4.visible = true
	get_parent().get_parent().get_node("Node2D/Checkpoint4").queue_free()


func _on_checkpoint_5_body_entered(body: Node2D) -> void:
	dialogue_player.play()
	$d4.visible = true
	get_parent().get_parent().get_node("Node2D/Checkpoint5").queue_free()
	get_parent().get_parent().get_node("Door").visible = true
	get_parent().get_parent().get_node("Door").monitoring = true
