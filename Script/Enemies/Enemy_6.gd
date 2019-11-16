extends KinematicBody2D

var confirm_up = false
var confirm_down = true
var confirm_left = true
var confirm_right = false
var velocity = Vector2()
var move_up = range (10,25)
var move_down = range (-15,-10)
var move_left = range (-25,-15)
var move_right = range (15,25)

func _ready():
	randomic()
	$".".add_to_group("enemies")

func randomic():
	randomize()
	move_up.shuffle()
	move_down.shuffle()
	move_left.shuffle()
	move_right.shuffle()
	move_up = move_up[1]
	move_down = move_down[1]
	move_left = move_left[1]
	move_right = move_right[1]

func _physics_process(delta):
	check_is_screen()
	update_moves()

func check_is_screen():
	if $Enemy_6_Notifier.is_on_screen():
		$Enemy_6_AnimatedSprite.play("idle")
		pass
	if not $Enemy_6_Notifier.is_on_screen():
		velocity.x = 0
		velocity.y = 0
		$Enemy_6_AnimatedSprite.stop()

func update_moves():
	if confirm_up == true:
		confirm_down = false 
		velocity.y = move_up
		move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()

	if confirm_down == true:
		confirm_up = false
		velocity.y = move_down
		move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()
	
	if confirm_right == true:
		confirm_left = false
		velocity.x = move_right
		move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()

	if confirm_left == true:
		confirm_right = false
		velocity.x = move_left
		move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()
	
	if test_move(transform,Vector2(0,1)):
		confirm_up = false
		confirm_down = true
	if test_move(transform,Vector2(0,-1)):
		confirm_down = false
		confirm_up = true
	if test_move(transform,Vector2(1,0)):
		confirm_left = true
		confirm_right = false
	if test_move(transform,Vector2(-1,0)):
		confirm_right = true
		confirm_left = false