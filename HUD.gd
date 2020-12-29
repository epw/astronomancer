extends Node2D

signal open_student

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var message_has_mouse = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if Input.is_action_just_pressed("ui_right"):
		emit_signal("open_student")

func show_message(msg):
	$StarMessage.scroll_to_line(0)
	$StarMessage.text = ""
	$StarMessage.append_bbcode("[center]" + msg + "[/center]")


func _on_StarMessage_mouse_entered():
	message_has_mouse = true


func _on_StarMessage_mouse_exited():
	message_has_mouse = false
