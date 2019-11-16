extends Node2D

func _process(delta):
	check_oxygen_first_free()
	check_oxygen_delete()

func check_oxygen_first_free():
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable"):
		get_node("/root/Global").collectables_oxygen_lvl_5[0] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable2"):
		get_node("/root/Global").collectables_oxygen_lvl_5[1] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable3"):
		get_node("/root/Global").collectables_oxygen_lvl_5[2] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable4"):
		get_node("/root/Global").collectables_oxygen_lvl_5[3] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable5"):
		get_node("/root/Global").collectables_oxygen_lvl_5[4] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable6"):
		get_node("/root/Global").collectables_oxygen_lvl_5[5] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable7"):
		get_node("/root/Global").collectables_oxygen_lvl_5[6] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable8"):
		get_node("/root/Global").collectables_oxygen_lvl_5[7] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable9"):
		get_node("/root/Global").collectables_oxygen_lvl_5[8] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable10"):
		get_node("/root/Global").collectables_oxygen_lvl_5[9] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable11"):
		get_node("/root/Global").collectables_oxygen_lvl_5[10] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable12"):
		get_node("/root/Global").collectables_oxygen_lvl_5[11] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable13"):
		get_node("/root/Global").collectables_oxygen_lvl_5[12] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable14"):
		get_node("/root/Global").collectables_oxygen_lvl_5[13] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable15"):
		get_node("/root/Global").collectables_oxygen_lvl_5[14] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable16"):
		get_node("/root/Global").collectables_oxygen_lvl_5[15] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable17"):
		get_node("/root/Global").collectables_oxygen_lvl_5[16] = true
	if not $Collectables_Oxygen.has_node("Oxygen_Colectable18"):
		get_node("/root/Global").collectables_oxygen_lvl_5[17] = true

func check_oxygen_delete():
	if get_node("/root/Global").collectables_oxygen_lvl_5[0] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable"):
			$Collectables_Oxygen/Oxygen_Colectable.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[1] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable2"):
			$Collectables_Oxygen/Oxygen_Colectable2.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[2] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable3"):
			$Collectables_Oxygen/Oxygen_Colectable3.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[3] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable4"):
			$Collectables_Oxygen/Oxygen_Colectable4.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[4] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable5"):
			$Collectables_Oxygen/Oxygen_Colectable5.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[5] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable6"):
			$Collectables_Oxygen/Oxygen_Colectable6.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[6] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable7"):
			$Collectables_Oxygen/Oxygen_Colectable7.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[7] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable8"):
			$Collectables_Oxygen/Oxygen_Colectable8.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[8] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable9"):
			$Collectables_Oxygen/Oxygen_Colectable9.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[9] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable10"):
			$Collectables_Oxygen/Oxygen_Colectable10.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[10] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable11"):
			$Collectables_Oxygen/Oxygen_Colectable11.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[11] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable12"):
			$Collectables_Oxygen/Oxygen_Colectable12.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[12] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable13"):
			$Collectables_Oxygen/Oxygen_Colectable13.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[13] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable14"):
			$Collectables_Oxygen/Oxygen_Colectable14.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[14] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable15"):
			$Collectables_Oxygen/Oxygen_Colectable15.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[15] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable16"):
			$Collectables_Oxygen/Oxygen_Colectable16.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[16] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable17"):
			$Collectables_Oxygen/Oxygen_Colectable17.call_deferred("queue_free")
	if get_node("/root/Global").collectables_oxygen_lvl_5[17] == true:
		if $Collectables_Oxygen.has_node("Oxygen_Colectable18"):
			$Collectables_Oxygen/Oxygen_Colectable18.call_deferred("queue_free")
	