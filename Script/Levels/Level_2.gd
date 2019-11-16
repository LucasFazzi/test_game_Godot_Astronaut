extends Node2D

func _process(delta):
	check_oxygen_first_free()
	check_oxygen_delete()

func check_oxygen_first_free():
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable5"):
		get_node("/root/Global").collectables_oxygen_lvl_2[0] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable6"):
		get_node("/root/Global").collectables_oxygen_lvl_2[1] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable7"):
		get_node("/root/Global").collectables_oxygen_lvl_2[2] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable2"):
		get_node("/root/Global").collectables_oxygen_lvl_2[3] = true

func check_oxygen_delete():
	if get_node("/root/Global").collectables_oxygen_lvl_2[0] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable5"):
			$Collectables_Oxygen/Oxygen_Colectable5.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_2[1] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable6"):
			$Collectables_Oxygen/Oxygen_Colectable6.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_2[2] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable7"):
			$Collectables_Oxygen/Oxygen_Colectable7.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_2[3] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable2"):
			$Collectables_Oxygen/Oxygen_Colectable2.call_deferred("queue_free")