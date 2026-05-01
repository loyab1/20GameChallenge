extends CharacterBody2D




func playerMovement(delta):
	pass
	
func _physics_process(delta: float) -> void:
	var direction = Input.get_axis("move_left","move_right")
	
	if direction: 
		velocity.x = direction * 200
		move_and_slide()
