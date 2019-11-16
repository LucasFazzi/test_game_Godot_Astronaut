extends KinematicBody2D

var confirm_left = false
var confirm_right = true
var velocity = Vector2()
var move_right = range (20,35)
var move_left = range (-35,-20)
var gravity = 45

func _ready():
	randomic()
	$".".add_to_group("enemies")

func randomic():
	randomize()
	move_right.shuffle()
	move_left.shuffle()
	move_right = move_right[1]
	move_left = move_left[1]

func _physics_process(delta):
	check_is_screen()
	update_moves()

func check_is_screen():
	if $Enemy_1_1_Notifier.is_on_screen():
		$Enemy_1_1_AnimatedSprite.play()
	if not $Enemy_1_1_Notifier.is_on_screen():
		velocity.x = 0
		velocity.y = 0
		$Enemy_1_1_AnimatedSprite.stop()

func update_moves():
	velocity.y = gravity

	if confirm_right == true:
		confirm_left = false 
		velocity.x = move_right
		$Enemy_1_1_AnimatedSprite.play("right")
		move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()

	if confirm_left == true:
		confirm_right = false
		velocity.x = move_left
		$Enemy_1_1_AnimatedSprite.play("left")
		move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()

	if test_move(transform,Vector2(1,0)):
		confirm_right = false
		confirm_left = true
	if test_move(transform,Vector2(-1,0)):
		confirm_right = true
		confirm_left = false
	if not $Enemy_1_1_Raycast_Floor_Right.is_colliding():
		confirm_right = false
		confirm_left = true
	if not $Enemy_1_1_Raycast_Floor_Left.is_colliding():
		confirm_right = true
		confirm_left = false