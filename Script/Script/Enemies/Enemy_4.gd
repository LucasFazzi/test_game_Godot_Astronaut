extends KinematicBody2D

var confirm_left = false
var confirm_right = true
var velocity = Vector2()
var move_right = range (42,78)
var move_left = range (-78,-42)

func _ready():
	randomize()
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
	if $Enemy_4_Notifier.is_on_screen():
		$Enemy_4_AnimatedSprite.play("idle")
		pass
	if not $Enemy_4_Notifier.is_on_screen():
		velocity.x = 0
		velocity.y = 0
		$Enemy_4_AnimatedSprite.stop()

func update_moves():
	if confirm_right == true:
		confirm_left = false 
		velocity.x = move_right
		move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()

	if confirm_left == true:
		confirm_right = false
		velocity.x = move_left
		move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()

	if test_move(transform,Vector2(1,0)):
		confirm_right = false
		confirm_left = true
	if test_move(transform,Vector2(-1,0)):
		confirm_right = true
		confirm_left = false