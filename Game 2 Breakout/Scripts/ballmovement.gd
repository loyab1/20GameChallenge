extends CharacterBody2D


var speed : int = 200
var velocity_vector : Vector2  = Vector2(0,-1)

func _physics_process(delta: float) -> void:
	var collision_info = move_and_collide(velocity_vector * speed * delta)
	
	if collision_info:
		velocity_vector = velocity_vector.bounce(collision_info.get_normal())
