extends Button

export (NodePath) var menu_path
export (String) var menu_name

var menu

func _ready():
	menu = get_node(str(menu_path))

func _on_close_pressed():
	menu.update_menu(menu_name)
