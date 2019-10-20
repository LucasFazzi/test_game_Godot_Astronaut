extends KinematicBody2D

var gravity = 2
var move = Vector2()
var speed = 4
var pushing = false
var pushing_top = false
var box_up = 20
var up_count = 120
var raycast_top_enable 

func _ready():
	$".".add_to_group("box")

func _process(delta):
	update_input()

func _physics_process(delta):
	update_move()

func update_input():
	if Input.is_action_pressed("move_push"):
		pushing = true
	if Input.is_action_just_released("move_push"):
		pushing = false
	if Input.is_action_pressed("move_jump"):
		pushing_top = true
	if Input.is_action_just_released("move_jump"):
		pushing_top = false

func update_move():
	move.y += gravity
	if $Box_RayCast_Right.is_colliding() and pushing == false:
		move.x -= speed
	if $Box_RayCast_Right.is_colliding() and pushing == true:
		move.x += speed
	if $Box_RayCast_Left.is_colliding() and pushing == false:
		move.x += speed
	if $Box_RayCast_Left.is_colliding() and pushing == true:
		move.x -= speed
	if $Box_RayCast_Top.is_colliding() and pushing == true and pushing_top == true:
		if up_count > 0:
			move.y -= box_up
			up_count -= 1
		if up_count <= 0:
			$Box_RayCast_Top.set_enabled(false)
			up_count = 120 
			raycast_top_enable = Timer.new()
			raycast_top_enable.connect("timeout",self,"_on_timer_raycast_top_timeout") 
			add_child(raycast_top_enable) 
			raycast_top_enable.set_wait_time(1) 
			raycast_top_enable.set_one_shot(true)
			raycast_top_enable.start()

	if not $Box_RayCast_Right.is_colliding() and not $Box_RayCast_Left.is_colliding(): 
		move.x = 0
	move = move_and_slide(move * speed, Vector2(0,-1), false, 4, PI/4, false).normalized()

func _on_timer_raycast_top_timeout():
	$Box_RayCast_Top.set_enabled(true)