extends KinematicBody2D

var confirm_left = false
var confirm_right = true
var velocity = Vector2()
var move_right = 15
var move_left = -15
var gravity = 15

func _ready():
	$".".add_to_group("enemies")

func _physics_process(delta):
	update_moves()

func update_moves():

	velocity.y = gravity

	if confirm_right == true:
		confirm_left = false 
		velocity.x = move_right
		$Enemy_1_AnimatedSprite.play("right")
		move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()

	if confirm_left == true:
		confirm_right = false
		velocity.x = move_left
		$Enemy_1_AnimatedSprite.play("left")
		move_and_slide(velocity, Vector2(0,-1), false, 4, PI/4, false).normalized()

	if test_move(transform,Vector2(1,0)):
		confirm_right = false
		confirm_left = true
	if test_move(transform,Vector2(-1,0)):
		confirm_right = true
		confirm_left = false
	if not $Enemy_1_Raycast_Floor_Right.is_colliding():
		confirm_right = false
		confirm_left = true
	if not $Enemy_1_Raycast_Floor_Left.is_colliding():
		confirm_right = true
		confirm_left = false

func _on_Enemy_1_Area_Hit_area_entered(area):
	if area.is_in_group("hit"):
		$".".call_deferred("queue_free")
