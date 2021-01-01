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

func _on_Star_send_message(star):
	message_shown = true
	emit_signal("star_message", star.message, star.will_fall, star == $Stars/PactStarSpot)

func cleared_message():
	$StarViewport/CanvasLayer.update()
