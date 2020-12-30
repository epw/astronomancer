extends Control

signal play

func _on_PlayButton_pressed():
	emit_signal("play")


func _on_SettingsButton_pressed():
	pass # Replace with function body.


func _on_CreditsButton_pressed():
	pass # Replace with function body.


func _on_QuitButton_pressed():
	get_tree().quit()

