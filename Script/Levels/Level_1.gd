extends Node2D

signal lvl_2
signal lvl_3
signal lvl_4

func _ready():
	pass

func _process(delta):
	check_level()
	check_crystal_portal()
	check_oxygen_first_free()
	check_oxygen_delete()

func check_oxygen_first_free():
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable"):
		get_node("/root/Global").collectables_oxygen_lvl_1[0] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable2"):
		get_node("/root/Global").collectables_oxygen_lvl_1[1] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable3"):
		get_node("/root/Global").collectables_oxygen_lvl_1[2] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable4"):
		get_node("/root/Global").collectables_oxygen_lvl_1[3] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable5"):
		get_node("/root/Global").collectables_oxygen_lvl_1[4] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable6"):
		get_node("/root/Global").collectables_oxygen_lvl_1[5] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable7"):
		get_node("/root/Global").collectables_oxygen_lvl_1[6] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable8"):
		get_node("/root/Global").collectables_oxygen_lvl_1[7] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable9"):
		get_node("/root/Global").collectables_oxygen_lvl_1[8] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable10"):
		get_node("/root/Global").collectables_oxygen_lvl_1[9] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable11"):
		get_node("/root/Global").collectables_oxygen_lvl_1[10] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable12"):
		get_node("/root/Global").collectables_oxygen_lvl_1[11] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable13"):
		get_node("/root/Global").collectables_oxygen_lvl_1[12] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable14"):
		get_node("/root/Global").collectables_oxygen_lvl_1[13] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable15"):
		get_node("/root/Global").collectables_oxygen_lvl_1[14] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable16"):
		get_node("/root/Global").collectables_oxygen_lvl_1[15] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable17"):
		get_node("/root/Global").collectables_oxygen_lvl_1[16] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable18"):
		get_node("/root/Global").collectables_oxygen_lvl_1[17] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable19"):
		get_node("/root/Global").collectables_oxygen_lvl_1[18] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable20"):
		get_node("/root/Global").collectables_oxygen_lvl_1[19] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable21"):
		get_node("/root/Global").collectables_oxygen_lvl_1[20] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable22"):
		get_node("/root/Global").collectables_oxygen_lvl_1[21] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable23"):
		get_node("/root/Global").collectables_oxygen_lvl_1[22] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable24"):
		get_node("/root/Global").collectables_oxygen_lvl_1[23] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable25"):
		get_node("/root/Global").collectables_oxygen_lvl_1[24] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable26"):
		get_node("/root/Global").collectables_oxygen_lvl_1[25] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable27"):
		get_node("/root/Global").collectables_oxygen_lvl_1[26] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable28"):
		get_node("/root/Global").collectables_oxygen_lvl_1[27] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable29"):
		get_node("/root/Global").collectables_oxygen_lvl_1[28] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable30"):
		get_node("/root/Global").collectables_oxygen_lvl_1[29] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable31"):
		get_node("/root/Global").collectables_oxygen_lvl_1[30] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable32"):
		get_node("/root/Global").collectables_oxygen_lvl_1[31] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable33"):
		get_node("/root/Global").collectables_oxygen_lvl_1[32] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable34"):
		get_node("/root/Global").collectables_oxygen_lvl_1[33] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable35"):
		get_node("/root/Global").collectables_oxygen_lvl_1[34] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable36"):
		get_node("/root/Global").collectables_oxygen_lvl_1[35] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable37"):
		get_node("/root/Global").collectables_oxygen_lvl_1[36] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable38"):
		get_node("/root/Global").collectables_oxygen_lvl_1[37] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable39"):
		get_node("/root/Global").collectables_oxygen_lvl_1[38] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable40"):
		get_node("/root/Global").collectables_oxygen_lvl_1[39] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable41"):
		get_node("/root/Global").collectables_oxygen_lvl_1[40] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable42"):
		get_node("/root/Global").collectables_oxygen_lvl_1[41] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable43"):
		get_node("/root/Global").collectables_oxygen_lvl_1[42] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable44"):
		get_node("/root/Global").collectables_oxygen_lvl_1[43] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable45"):
		get_node("/root/Global").collectables_oxygen_lvl_1[44] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable46"):
		get_node("/root/Global").collectables_oxygen_lvl_1[45] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable47"):
		get_node("/root/Global").collectables_oxygen_lvl_1[46] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable48"):
		get_node("/root/Global").collectables_oxygen_lvl_1[47] = true

func check_oxygen_delete():
	if get_node("/root/Global").collectables_oxygen_lvl_1[0] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable"):
			$Collectables_Oxygen/Oxygen_Colectable.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[1] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable2"):
			$Collectables_Oxygen/Oxygen_Colectable2.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[2] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable3"):
			$Collectables_Oxygen/Oxygen_Colectable3.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[3] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable4"):
			$Collectables_Oxygen/Oxygen_Colectable4.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[4] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable5"):
			$Collectables_Oxygen/Oxygen_Colectable5.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[5] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable6"):
			$Collectables_Oxygen/Oxygen_Colectable6.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[6] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable7"):
			$Collectables_Oxygen/Oxygen_Colectable7.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[7] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable8"):
			$Collectables_Oxygen/Oxygen_Colectable8.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[8] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable9"):
			$Collectables_Oxygen/Oxygen_Colectable9.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[9] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable10"):
			$Collectables_Oxygen/Oxygen_Colectable10.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[10] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable11"):
			$Collectables_Oxygen/Oxygen_Colectable11.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[11] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable12"):
			$Collectables_Oxygen/Oxygen_Colectable12.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[12] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable13"):
			$Collectables_Oxygen/Oxygen_Colectable13.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[13] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable14"):
			$Collectables_Oxygen/Oxygen_Colectable14.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[14] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable15"):
			$Collectables_Oxygen/Oxygen_Colectable15.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[15] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable16"):
			$Collectables_Oxygen/Oxygen_Colectable16.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[16] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable17"):
			$Collectables_Oxygen/Oxygen_Colectable17.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[17] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable18"):
			$Collectables_Oxygen/Oxygen_Colectable18.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[18] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable19"):
			$Collectables_Oxygen/Oxygen_Colectable19.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[19] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable20"):
			$Collectables_Oxygen/Oxygen_Colectable20.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[20] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable21"):
			$Collectables_Oxygen/Oxygen_Colectable21.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[21] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable22"):
			$Collectables_Oxygen/Oxygen_Colectable22.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[22] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable23"):
			$Collectables_Oxygen/Oxygen_Colectable23.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[23] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable24"):
			$Collectables_Oxygen/Oxygen_Colectable24.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[24] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable25"):
			$Collectables_Oxygen/Oxygen_Colectable25.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[25] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable26"):
			$Collectables_Oxygen/Oxygen_Colectable26.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[26] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable27"):
			$Collectables_Oxygen/Oxygen_Colectable27.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[27] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable28"):
			$Collectables_Oxygen/Oxygen_Colectable28.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[28] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable29"):
			$Collectables_Oxygen/Oxygen_Colectable29.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[29] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable30"):
			$Collectables_Oxygen/Oxygen_Colectable30.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[30] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable31"):
			$Collectables_Oxygen/Oxygen_Colectable31.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[31] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable32"):
			$Collectables_Oxygen/Oxygen_Colectable32.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[32] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable33"):
			$Collectables_Oxygen/Oxygen_Colectable33.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[33] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable34"):
			$Collectables_Oxygen/Oxygen_Colectable34.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[34] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable35"):
			$Collectables_Oxygen/Oxygen_Colectable35.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[35] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable36"):
			$Collectables_Oxygen/Oxygen_Colectable36.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[36] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable37"):
			$Collectables_Oxygen/Oxygen_Colectable37.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[37] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable38"):
			$Collectables_Oxygen/Oxygen_Colectable38.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[38] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable39"):
			$Collectables_Oxygen/Oxygen_Colectable39.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[39] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable40"):
			$Collectables_Oxygen/Oxygen_Colectable40.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[40] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable41"):
			$Collectables_Oxygen/Oxygen_Colectable41.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[41] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable42"):
			$Collectables_Oxygen/Oxygen_Colectable42.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[42] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable43"):
			$Collectables_Oxygen/Oxygen_Colectable43.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[43] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable44"):
			$Collectables_Oxygen/Oxygen_Colectable44.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[44] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable45"):
			$Collectables_Oxygen/Oxygen_Colectable45.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[45] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable46"):
			$Collectables_Oxygen/Oxygen_Colectable46.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[46] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable47"):
			$Collectables_Oxygen/Oxygen_Colectable47.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_1[47] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable48"):
			$Collectables_Oxygen/Oxygen_Colectable48.call_deferred("queue_free")


func check_crystal_portal():
	if get_node("/root/Global").check_crystal_portal_lvl1[0] == true:
		if $Collectables_Crystal_Portal.has_node("Crystal_Portal_Collectable1"):
			$Collectables_Crystal_Portal/Crystal_Portal_Collectable1.call_deferred("queue_free")
	if get_node("/root/Global").check_crystal_portal_lvl1[1] == true:
		if $Collectables_Crystal_Portal.has_node("Crystal_Portal_Collectable10"):
			$Collectables_Crystal_Portal/Crystal_Portal_Collectable10.call_deferred("queue_free")
	if get_node("/root/Global").check_crystal_portal_lvl1[2] == true:
		if $Collectables_Crystal_Portal.has_node("Crystal_Portal_Collectable2"):
			$Collectables_Crystal_Portal/Crystal_Portal_Collectable2.call_deferred("queue_free")

func check_level():
	if get_node("/root/Global").check_level[0] == true:
		emit_signal("lvl_2")
	if get_node("/root/Global").check_level[1] == true:
		emit_signal("lvl_3")
	if get_node("/root/Global").check_level[2] == true:
		emit_signal("lvl_4")

func _on_Level_1_lvl_2():
	get_node("/root/Global").check_level[0] = false
	get_tree().call_deferred("change_scene","res://Scenes/Levels/Teleport.tscn")
func _on_Level_1_lvl_3():
	get_node("/root/Global").check_level[1] = false
	get_tree().call_deferred("change_scene","res://Scenes/Levels/Teleport.tscn")
func _on_Level_1_lvl_4():
	get_node("/root/Global").check_level[2] = false
	get_tree().call_deferred("change_scene","res://Scenes/Levels/Teleport.tscn")
