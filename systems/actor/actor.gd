extends KinematicBody2D

signal state_dead(is_player)

signal health_update(health)
var health = 100

export (bool) var is_player = false
export (bool) var is_enemy = false

export (int) var speed_min = 300
export (int) var speed_max = 600

var mouse_sensitivity = 2

var vel = Vector2()

var dir = {
	"move_u": false,
	"move_d": false,
	"move_l": false,
	"move_r": false
}

func _ready():
	self.connect("state_dead", self, "_state_dead")


func _physics_process(delta):
	vel = Vector2()

	if is_player:
		look_at(get_global_mouse_position())

	if dir["move_u"]:
		vel.y -= 1

	if dir["move_d"]:
		vel.y += 1

	if dir["move_l"]:
		vel.x -= 1

	if dir["move_r"]:
		vel.x += 1

	vel = vel.normalized()
	move_and_slide(vel * speed_max)


func health_update_damage(amount):
	health -= amount
	if health <= 0:
		emit_signal("state_dead")

	emit_signal("health_update")


func _state_dead():
	if !is_player:
		get_node("timer/death").start()

func _on_death_timeout():
	self.queue_free()
