extends Node2D

func _process(delta):
	check_oxygen_first_free()
	check_oxygen_delete()

func check_oxygen_first_free():
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable"):
		get_node("/root/Global").collectables_oxygen_lvl_4[0] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable2"):
		get_node("/root/Global").collectables_oxygen_lvl_4[1] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable3"):
		get_node("/root/Global").collectables_oxygen_lvl_4[2] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable4"):
		get_node("/root/Global").collectables_oxygen_lvl_4[3] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable5"):
		get_node("/root/Global").collectables_oxygen_lvl_4[4] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable6"):
		get_node("/root/Global").collectables_oxygen_lvl_4[5] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable7"):
		get_node("/root/Global").collectables_oxygen_lvl_4[6] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable8"):
		get_node("/root/Global").collectables_oxygen_lvl_4[7] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable9"):
		get_node("/root/Global").collectables_oxygen_lvl_4[8] = true

func check_oxygen_delete():
	if get_node("/root/Global").collectables_oxygen_lvl_4[0] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable"):
			$Collectables_Oxygen/Oxygen_Colectable.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_4[1] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable2"):
			$Collectables_Oxygen/Oxygen_Colectable2.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_4[2] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable3"):
			$Collectables_Oxygen/Oxygen_Colectable3.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_4[3] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable4"):
			$Collectables_Oxygen/Oxygen_Colectable4.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_4[4] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable5"):
			$Collectables_Oxygen/Oxygen_Colectable5.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_4[5] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable6"):
			$Collectables_Oxygen/Oxygen_Colectable6.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_4[6] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable7"):
			$Collectables_Oxygen/Oxygen_Colectable7.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_4[7] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable8"):
			$Collectables_Oxygen/Oxygen_Colectable8.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_4[8] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable9"):
			$Collectables_Oxygen/Oxygen_Colectable9.call_deferred("queue_free")