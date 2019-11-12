extends KinematicBody2D

var gravity 
var velocity = Vector2()
var speed = range (75,95)

func _ready():
	randomic()

func randomic():
	randomize()
	speed = speed[1]

func _physics_process(delta):
	$".".add_to_group("enemies")
	check_move()

func check_move():
	velocity.y = -speed
	move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()