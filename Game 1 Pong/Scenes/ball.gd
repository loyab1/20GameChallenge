extends CharacterBody2D
@export var ball_speed = 600

func ballstart():
	
	global_position = get_viewport_rect().size/2
	var value = [-1,1].pick_random()
	var direction = Vector2(value,0)
	velocity = direction * ball_speed
	
func _ready():
	randomize()
	ballstart()
	
func _physics_process(delta: float) -> void:
	var collision = move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
	
# Replace with function body.
