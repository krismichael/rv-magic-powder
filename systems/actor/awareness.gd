extends Node2D

onready var raycast = get_node("raycast")
onready var target = get_node("//root/game/hud/debug")

func _process(delta):
	if raycast.is_colliding():

		if raycast.get_collider():
			target.set_text(str(raycast.get_collider().get_name()))


#"res://systems/actor/actor.gd"

# if personal space use weapon
# if social space follow
# if public space be aware
