extends Control

signal play
signal setting_change(setting, state)

func _on_PlayButton_pressed():
	emit_signal("play")


func _on_SettingsButton_pressed():
	$SettingsMenu.visible = true


func _on_CreditsButton_pressed():
	pass # Replace with function body.


func _on_QuitButton_pressed():
	get_tree().quit()


func _on_SettingsMenu_setting_change(setting, state):
	emit_signal("setting_change", setting, state)
