extends Control

onready var character_l_animation = get_node("characters/left/animation")
onready var character_l_audio = get_node("characters/left/audio")
onready var character_l_image = get_node("characters/left")

onready var character_r_animation = get_node("characters/right/animation")
onready var character_r_audio = get_node("characters/right/audio")
onready var character_r_image = get_node("characters/right")


onready var conversation_character = get_node("conversation/character")
onready var conversation_text = get_node("conversation/text")

# onready var option_standard_a
# onready var option_standard_b

# onready var option_special_a
# onready var option_special_b

func _ready():
	character_l_animation.play("left_fade_in")
	character_r_animation.play("right_fade_out")
