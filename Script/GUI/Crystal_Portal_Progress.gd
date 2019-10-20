extends RichTextLabel

func _process(delta):
	update_crystal_value()

func update_crystal_value():
	$".".text = str(get_node("/root/Global").portal_keys_lvl_1)
