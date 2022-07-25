extends Node

onready var timer = get_node("timer")

var duration = 0

func _on_timer_timeout():
	duration += 1
	timer.start()
