extends Area2D

var check_contact = false

func _process(delta):
	check_contact()
	check_is_screen()

func check_is_screen():
	if $Crystal_Portal_Notifier.is_on_screen():
		$Crystal_Portal_Collectable_AnimatedSprite.play("idle")
	if not $Crystal_Portal_Notifier.is_on_screen():
		$Crystal_Portal_Collectable_AnimatedSprite.stop()

func _on_Crystal_Portal_Collectable_body_entered(body):
	if body.is_in_group("player") and get_node("/root/Global").portal_keys_lvl_1 == 10:
		get_node("/root/Global").check_level[0] = true
		check_contact = true
		get_node("/root/Global").check_crystal_portal_lvl1[0] = true
	if body.is_in_group("player") and get_node("/root/Global").portal_keys_lvl_1 == 9:
		get_node("/root/Global").check_level[1] = true
		check_contact = true
		get_node("/root/Global").check_crystal_portal_lvl1[1] = true
	if body.is_in_group("player") and get_node("/root/Global").portal_keys_lvl_1 == 8:
		get_node("/root/Global").check_level[2] = true
		check_contact = true
		get_node("/root/Global").check_crystal_portal_lvl1[2] = true
	else:
		pass

func check_contact():
	if check_contact == true:
		get_node("/root/Global").portal_keys_lvl_1 -= 1
		check_contact = false
	else:
		pass