extends Control

export (NodePath) var menu_path

onready var scene_loader = get_node("scene_loader")
onready var btn_continue = get_node("container/continue")

var has_save = false
var menu

func _ready():
	if has_save:
		btn_continue.visible = true
	else:
		btn_continue.visible = false

	menu = get_node(str(menu_path))


func _on_continue_pressed():
	scene_loader.load_scene()

func _on_new_pressed():
	scene_loader.load_scene()


func _on_load_pressed():
	menu.update_menu("load")

func _on_settings_pressed():
	menu.update_menu("settings")

func _on_extras_pressed():
	menu.update_menu("extras")


func _on_quit_pressed():
	get_tree().quit()
