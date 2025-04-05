extends StaticBody2D

func on_break(target: Array[Vector2i]):
	for i in target:
		CustomTileMap.instance.set_cell(i)
	
