extends Node2D

signal star_message

func _ready():
	$StarMask.visible = true # Because you want to have it off in the editor

func _on_Star_send_message(star):
	emit_signal("star_message", star.message)
