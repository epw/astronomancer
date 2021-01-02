extends Node2D

export (PackedScene) var Menu
export (PackedScene) var Student
export (PackedScene) var Sunrise

var config
var HUD

var answered_pact = false
var accepted_pact = false # Whether the player accepted the star's pact
var knows_star_will_fall = false # Whether the player knows where a star will fall

func _ready():
	$HUD/StarMessage.rect_size = Vector2(1024, 128)
	$HUD/StarMessage.rect_position = Vector2(0, 768 - $HUD/StarMessage.rect_size.y)
	$Menu.set_evening_star($Sky/Stars/EveningStar)
	
	load_config()
	
func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
		go_to_menu()

func lookup_err():
	print("Look up the corresponding value in https://docs.godotengine.org/en/stable/classes/class_@globalscope.html#enum-globalscope-error")

func update_config(key, value):
	config.set_value("config", key, value)
	var err = config.save("user://settings.cfg")
	if err != OK:
		print("Error saving settings.cfg: ", err)
		lookup_err()

func create_config():
	update_config("sound", true)
	update_config("cursive", true)
	update_config("decision", OS.has_touchscreen_ui_hint()) # Yes/no buttons in RichTextLabel don't work on mobile with cursive for some reason, default to helper on

func load_config():
	config = ConfigFile.new()
	var err = config.load("user://settings.cfg")
	if err == OK:
		apply_config()
	elif err == ERR_FILE_NOT_FOUND:
		create_config()
		load_config()
	else:
		print("Error opening settings.cfg: ", err)
		lookup_err()

func apply_one_config(name, button):
	var value = config.get_value("config", name)
	if value == null:
		value = true
		update_config(name, value)
	_on_Menu_setting_change(name, value)
	button.pressed = value

func apply_config():
	apply_one_config("sound", $Menu/SettingsMenu/VBoxContainer/SoundCheckButton)
	apply_one_config("cursive", $Menu/SettingsMenu/VBoxContainer/CursiveCheckButton)
	apply_one_config("decision", $Menu/SettingsMenu/VBoxContainer/DecisionCheckButton)

func delayed_show_question():
	$HUD/HUDTimer.start(3)
	yield($HUD/HUDTimer, "timeout")
	$HUD/TextQuestion.rect_size = Vector2(1024, $HUD/TextQuestion/RichTextLabel.rect_min_size.y)
	$HUD/TextQuestion.rect_position = Vector2(512 - $HUD/TextQuestion/RichTextLabel.rect_min_size.x / 2, 600)
	$HUD/TextQuestion.show()

func stop_showing_question():
	$HUD/TextQuestion.hide()
	$HUD/HUDTimer.stop()

func _on_Sky_star_message(message, will_fall, pact=false):
	if will_fall:
		knows_star_will_fall = true
	
#	if OS.has_touchscreen_ui_hint(): # Yes/no buttons don't work on mobile with cursive for some reason, so detect and use print instead, just here
#		use_print_font(not config.get_value("config", "cursive"))
#		if pact: 
#			use_print_font(true)

	if config.get_value("config", "decision"):
		if pact and not answered_pact:
			delayed_show_question()
		else:
			stop_showing_question()

	show_message(message)

func _on_Student_close():
	remove_child($Student)

func _on_Sunrise_close():
	#warning-ignore:return_value_discarded
	get_tree().reload_current_scene() # Restart game

func show_message(msg):
	$HUD/StarMessage.scroll_to_line(0)
	$HUD/StarMessage.text = ""
	$HUD/StarMessage.append_bbcode("[center]" + msg + "[/center]")

func _on_StarMessage_mouse_entered():
	$Sky.message_has_mouse = true

func _on_StarMessage_mouse_exited():
	$Sky.message_has_mouse = false

const pact_message = "[color=#ff7777]I am pleased you have accepted my bargain. See how the locusts descend already. You will allow great things to come to your world.[/color]"
const no_pact_message = "[color=#ff4444]You disappoint me. May all your peoples' nightmares of the comet be realized.[/color]"

func _on_StarMessage_meta_clicked(meta):
	var pact_star = $Sky/Stars/PactStarSpot
	if meta == "yes":
		accepted_pact = true
		pact_star.message = pact_message
	elif meta == "no":
		pact_star.message = no_pact_message
	pact_star.clicked()
	answered_pact = true
	stop_showing_question()

func start_dialog(dialog, closing_signal):
	show_message("")
	add_child(dialog)
	dialog.resize()
	dialog.connect("close", self, closing_signal)
	
func open_student():
	start_dialog(Student.instance(), "_on_Student_close")

func _on_StudentButton_pressed():
	open_student()

func open_sunrise():
	var dialog = Sunrise.instance()
	dialog.pact = accepted_pact
	dialog.knows_star_will_fall = knows_star_will_fall
	start_dialog(dialog, "_on_Sunrise_close")

func _on_SunriseButton_pressed():
	open_sunrise()

func play_game():
	$Menu.fadeout()

func _on_Menu_play():
	play_game()

func go_to_menu():
	$Sky.set_process(false)
	$Menu.fadein()

func _on_MenuButton_pressed():
	go_to_menu()

func use_print_font(enabled):
	$HUD/StarMessage.add_font_override("normal_font", load("res://assets/StandardFont.tres") if enabled else null)

func _on_Menu_setting_change(setting, state):
	update_config(setting, state)
	if setting == "sound":
		AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), not state)
	elif setting == "cursive":
		use_print_font(not state)
	elif setting == "decision":
		# Most logic is just checking the config value
		if not state:
			stop_showing_question()

func _on_Sky_clear_message():
	show_message("")
	stop_showing_question()
	$Sky.cleared_message()


func _on_Menu_sky_ready():
	$Sky.set_process(true)


func _on_YesButton_pressed():
	_on_StarMessage_meta_clicked("yes")


func _on_NoButton_pressed():
	_on_StarMessage_meta_clicked("no")

