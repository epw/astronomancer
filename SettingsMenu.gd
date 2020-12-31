extends Control

signal setting_change(setting, state)

func _on_SoundCheckButton_toggled(button_pressed):
	emit_signal("setting_change", "sound", button_pressed)

func _on_MusicCheckButton_toggled(button_pressed):
	emit_signal("setting_change", "music", button_pressed)

func _on_NoCursiveCheckButton_toggled(button_pressed):
	emit_signal("setting_change", "cursive", button_pressed)


func _on_BackButton_pressed():
	visible = false
