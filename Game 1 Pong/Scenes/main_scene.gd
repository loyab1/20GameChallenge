extends Node2D

var TwoPlayer = false
var leftPlayerScore = 0
var rightPlayerScore = 0

func _ready() -> void:
	$LeftScore.text = str(leftPlayerScore)
	$RightScore.text = str(rightPlayerScore)
	$Paddle.global_position.x = get_viewport_rect().size.x/10

#Side Divider
func _draw() -> void:
	var screenSize = get_viewport_rect().size
	var pointA = Vector2(screenSize.x/2,0)
	var pointB = Vector2(screenSize.x/2,1080)
	draw_dashed_line(pointA,pointB,Color.RED,10,30)

func _on_right_wall_body_entered(body: CharacterBody2D) -> void:
	leftPlayerScore += 1
	$LeftScore.text = str(leftPlayerScore)
	$Ball.velocity = Vector2.ZERO
	$Ball.ballstart() # Replace with function body.

func _on_left_wall_body_entered(body: CharacterBody2D) -> void:
	rightPlayerScore += 1
	$RightScore.text = str(rightPlayerScore)
	$Ball.velocity = Vector2.ZERO
	$Ball.ballstart()
