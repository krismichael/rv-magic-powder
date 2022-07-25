extends "res://systems/actor/actor.gd"

onready var model_u = get_node("model/gun_u")
onready var model_d = get_node("model/gun_d")
onready var model_l = get_node("model/gun_l")
onready var model_r = get_node("model/gun_r")


var inventory = {
	"keys": {
		1: false,
		2: true
	}
}

var last_model = model_d


func _input(event):
	if Input.is_action_pressed("move_u"):
		dir["move_u"] = true
		_check_model(model_u)
	else:
		dir["move_u"] = false

	if Input.is_action_pressed("move_d"):
		dir["move_d"] = true
		_check_model(model_d)
	else:
		dir["move_d"] = false

	if Input.is_action_pressed("move_l"):
		dir["move_l"] = true
		_check_model(model_l)
	else:
		dir["move_l"] = false

	if Input.is_action_pressed("move_r"):
		dir["move_r"] = true
		_check_model(model_r)
	else:
		dir["move_r"] = false


func _check_model(input_direction):

	model_u.visible = false
	model_d.visible = false
	model_l.visible = false
	model_r.visible = false

	if last_model != input_direction:
		last_model = input_direction

	last_model.visible = true


func add_to_inventory(type, id, qty):
	print(str("you added ", qty, " ", type, "(", id, ") to your inventory"))
