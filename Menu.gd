extends Control

signal play
signal sky_ready
signal setting_change(setting, state)

signal star_message

enum FADE_STATES {NONE, BUTTONS, SLIDE, EVENING, SKY}
var fade_state = FADE_STATES.NONE
var fade_amount = 1

const SLIDE_RATE = 200
const SLIDE_Y = 400

var first_time = true
var message_shown = false

func _ready():
	if OS.get_name() == "HTML5":
		$VBoxContainer/QuitButton.queue_free()

func _input(event):
	if fade_state == FADE_STATES.EVENING:
		if event is InputEventMouse:
			var pos = Vector2($EveningStarSpot.position.x,
							  $EveningStarSpot.position.y + SLIDE_Y)

			if event.position.distance_to(pos) < $EveningStarSpot/CollisionShape2D.shape.radius:
				if not $EveningStarSpot.pointed_at:
					$EveningStarSpot._on_StarSpot_mouse_entered()
					if event is InputEventMouseButton:
						if event.pressed == true and event.button_index == BUTTON_LEFT:
							$EveningStarSpot.clicked()
							fade_state = FADE_STATES.SKY
			else:
				$EveningStarSpot._on_StarSpot_mouse_exited()

func set_evening_star(star):
	$EveningStarSpot.message = star.message
	$EveningStarSpot.position = star.position
	$EveningStarSpot/CollisionShape2D.shape.radius = star.get_node("CollisionShape2D").shape.radius
	$EveningStarSpot.position.y -= SLIDE_Y
	$EveningStarSpot.disconnect("send_message", get_parent(), "_on_Star_send_message")
	#warning-ignore:return_value_discarded
	$EveningStarSpot.connect("send_message", self, "_on_Star_send_message", [$EveningStarSpot])
	
func set_elements_fade():
	for el in $VBoxContainer.get_children():
		el.modulate.a = fade_amount
		if el.modulate.a < 0:
			el.modulate.a = 0
		elif el.modulate.a > 1:
			el.modulate.a = 1

func _process(delta):
	if $SettingsMenu.visible:
		if Input.is_action_just_pressed("ui_cancel"):
			$SettingsMenu.go_back()

	if fade_state == FADE_STATES.BUTTONS:
		rect_position.y += SLIDE_RATE * delta
		fade_amount -= 5 * delta
		set_elements_fade()
		if fade_amount <= 0:
			fade_state = FADE_STATES.SLIDE
	elif fade_state == FADE_STATES.SLIDE:
		rect_position.y += SLIDE_RATE * delta
		if rect_position.y >= SLIDE_Y:
			rect_position.y = SLIDE_Y
			fade_state = FADE_STATES.EVENING
	elif fade_state == FADE_STATES.EVENING:
		if Input.is_action_just_pressed("ui_accept"):
			if $EveningStarSpot.pointed_at:
				$EveningStarSpot.clicked()
				fade_state = FADE_STATES.SKY
	elif fade_state == FADE_STATES.SKY:
		modulate.a -= 0.5 * delta
		if modulate.a <= 0:
			modulate.a = 1
			finish_clearing_sky()


func finish_clearing_sky():
	fade_state = FADE_STATES.NONE
	hide()
	if $EveningStarSpot:
		$EveningStarSpot.queue_free()
	emit_signal("sky_ready")

func _on_Star_send_message(star):
	message_shown = true
	emit_signal("star_message", star.message, star.will_fall)

func _on_PlayButton_pressed():
	emit_signal("play")


func _on_SettingsButton_pressed():
	$SettingsMenu.show()


func _on_CreditsButton_pressed():
	$CreditsScreen.show()


func _on_QuitButton_pressed():
	get_tree().quit()


func _on_SettingsMenu_setting_change(setting, state):
	emit_signal("setting_change", setting, state)

func fadeout():
	if first_time:
		first_time = false
		fade_state = FADE_STATES.BUTTONS
	else:
		finish_clearing_sky()

func fadein():
	modulate.a = 1
	fade_amount = 1
	set_elements_fade()
	fade_state = FADE_STATES.NONE
	rect_position.y = 0
	show()
