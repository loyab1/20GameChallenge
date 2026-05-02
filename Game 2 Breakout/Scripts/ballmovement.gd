extends CharacterBody2D


var speed : int = 200
var velocity_vector : Vector2  = Vector2(0,-1)


func _ready() -> void:
	global_position = get_viewport_rect().size / 2

func _physics_process(delta: float) -> void:
	var collision_info : KinematicCollision2D = move_and_collide(velocity_vector * speed * delta)
	
	if collision_info:
		velocity_vector = velocity_vector.bounce(collision_info.get_normal())
