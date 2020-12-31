extends Node2D

signal star_message
signal clear_message

var message_shown = false
var message_has_mouse

func _ready():
	$StarMask.show() # Because you want to have it off in the editor
	set_process(false)

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		if message_shown and not message_has_mouse:
			emit_signal("clear_message")

func morning_only():
	return false
#	return $StarViewport/CanvasLayer.morning_only

func _on_Star_send_message(star):
	if morning_only() and star != $Stars/MorningStar:
		return
	message_shown = true
	emit_signal("star_message", star.message, star.will_fall)

func cleared_message():
	$StarViewport/CanvasLayer.morning_only = false
	$StarViewport/CanvasLayer.update()
