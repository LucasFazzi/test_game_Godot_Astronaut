extends KinematicBody2D

var gravity = 10
var move = Vector2()
var speed = 5

func _ready():
	$".".add_to_group("box")

func _physics_process(delta):
	update_move()

func update_move():
	move.y += gravity
	if $Box_RayCast_Right.is_colliding():
		move.x -= speed 
	if $Box_RayCast_Left.is_colliding():
		move.x += speed 
	if not $Box_RayCast_Right.is_colliding() and not $Box_RayCast_Left.is_colliding(): 
		move.x = 0
	move = move_and_slide(move * speed, Vector2(0,-1), false, 4, PI/4, false).normalized()
