extends CharacterBody2D


@export var paddle_speed = 400

func playerController(delta):
	var direction = Input.get_axis("move_up","move_down")
	velocity = Vector2(0,direction*paddle_speed) 
	move_and_collide(velocity * delta)
	
	
func _physics_process(delta: float) -> void:
	playerController(delta)
