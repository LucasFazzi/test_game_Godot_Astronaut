extends Node2D

signal lvl_2
signal lvl_3
signal lvl_4

func _ready():
	pass

func _process(delta):
	check_level()
	check_crystal_portal()

func check_crystal_portal():
	if get_node("/root/Global").check_crystal_portal_lvl1[0] == false:
		pass
	else:
		if $Collectables_Crystal_Portal.has_node("Crystal_Portal_Collectable1"):
			$Collectables_Crystal_Portal/Crystal_Portal_Collectable1.call_deferred("queue_free")
		else:
			pass
	if get_node("/root/Global").check_crystal_portal_lvl1[1] == false:
		pass
		if $Collectables_Crystal_Portal.has_node("Crystal_Portal_Collectable2"):
			$Collectables_Crystal_Portal/Crystal_Portal_Collectable2.call_deferred("queue_free")
		else:
			pass
	if get_node("/root/Global").check_crystal_portal_lvl1[2] == false:
		pass
		if $Collectables_Crystal_Portal.has_node("Crystal_Portal_Collectable3"):
			$Collectables_Crystal_Portal/Crystal_Portal_Collectable3.call_deferred("queue_free")
		else:
			pass
	


func check_level():
	if get_node("/root/Global").check_level[0] == true:
		emit_signal("lvl_2")
	if get_node("/root/Global").check_level[1] == true:
		emit_signal("lvl_3")
	if get_node("/root/Global").check_level[2] == true:
		emit_signal("lvl_4")

func _on_Level_1_lvl_2():
	get_node("/root/Global").check_level[0] = false
	get_tree().call_deferred("change_scene","res://Scenes/Levels/Level_2.tscn")
func _on_Level_1_lvl_3():
	get_node("/root/Global").check_level[1] = false
	get_tree().call_deferred("change_scene","res://Scenes/Levels/Level_3.tscn")
func _on_Level_1_lvl_4():
	get_node("/root/Global").check_level[2] = false
	get_tree().call_deferred("change_scene","res://Scenes/Levels/Level_4.tscn")
