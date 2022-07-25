extends CanvasLayer

var registrar = {
	"0":false
}

func update_menu(record):
	var target = get_node(str(record))

	if target.visible:
		target.visible = false
	else:
		target.visible = true
