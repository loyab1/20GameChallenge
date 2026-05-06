extends Node2D
@onready var brick_scene = preload("res://Scenes/brick.tscn")
func _ready() -> void:
	spawn_bricks(16,8)
	pass

func spawn_bricks(count: int, rows: int) -> void:
	
	var offset_x = 32 # Width of brick + gap
	var offset_y = 16 # Height of brick + gap
	var start_pos = Vector2(0, get_viewport_rect().size.y / 2)
	
	
#nested loop?
	for i in range(rows):
		for j in range(count):
			var brick = brick_scene.instantiate()
			add_child(brick)
			
			# j controls the horizontal (X) movement
			# i controls the vertical (Y) movement
			brick.global_position = start_pos + Vector2(j * offset_x, i * offset_y)
