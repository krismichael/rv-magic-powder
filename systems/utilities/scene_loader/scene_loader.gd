extends Node

export (PackedScene) var packed_scene

export (bool) var is_timed = false
export (int) var timed_delay = 0

onready var timer = get_node("timer")

func _ready():
	if is_timed:
		timer.set_wait_time(timed_delay)
		timer.start()

func load_scene():
	get_tree().change_scene_to(packed_scene)

func _on_timer_timeout():
	load_scene()
