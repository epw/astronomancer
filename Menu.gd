extends Control

signal play
signal setting_change(setting, state)

enum FADE_STATES {NONE, BUTTONS, SKY}
var fade_state = FADE_STATES.NONE
var fade_amount = 1

func set_elements_fade():
	for el in $VBoxContainer.get_children():
		el.modulate.a = fade_amount
		if el.modulate.a < 0:
			el.modulate.a = 0
		elif el.modulate.a > 1:
			el.modulate.a = 1

func _process(delta):
	if fade_state == FADE_STATES.BUTTONS:
		fade_amount -= 3 * delta
		set_elements_fade()
		if fade_amount <= 0:
			fade_state = FADE_STATES.SKY
	elif fade_state == FADE_STATES.SKY:
		$ExtraSky.modulate.a -= 2 * delta

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

func fadeout():
	fade_state = FADE_STATES.BUTTONS

func fadein():
	fade_amount = 1
	set_elements_fade()
	fade_state = FADE_STATES.NONE
