extends Control

signal setting_change

func _on_SoundCheckButton_toggled(button_pressed):
	emit_signal("setting_change", "sound", button_pressed)

func _on_CursiveCheckButton_toggled(button_pressed):
	emit_signal("setting_change", "cursive", button_pressed)

func _on_DecisionCheckButton_toggled(button_pressed):
		emit_signal("setting_change", "decision", button_pressed)

func go_back():
	hide()

func _on_BackButton_pressed():
	go_back()
