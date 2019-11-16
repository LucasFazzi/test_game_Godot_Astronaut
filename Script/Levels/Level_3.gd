extends Node2D

func _process(delta):
	check_oxygen_first_free()
	check_oxygen_delete()

func check_oxygen_first_free():
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable3"):
		get_node("/root/Global").collectables_oxygen_lvl_3[0] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable"):
		get_node("/root/Global").collectables_oxygen_lvl_3[1] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable2"):
		get_node("/root/Global").collectables_oxygen_lvl_3[2] = true

func check_oxygen_delete():
	if get_node("/root/Global").collectables_oxygen_lvl_3[0] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable3"):
			$Collectables_Oxygen/Oxygen_Colectable3.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_3[1] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable"):
			$Collectables_Oxygen/Oxygen_Colectable.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_3[2] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable2"):
			$Collectables_Oxygen/Oxygen_Colectable2.call_deferred("queue_free")
