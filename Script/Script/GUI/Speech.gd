extends RichTextLabel

func _process(delta):
	update_speech()

func update_speech():
	$".".text = str(get_node("/root/Global").speech)
