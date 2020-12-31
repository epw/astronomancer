extends Node2D

export (PackedScene) var Menu
export (PackedScene) var Student
export (PackedScene) var Sunrise

var HUD
var message_has_mouse = false

var removing_menu = false

var accepted_pact = false # Whether the player accepted the star's pact
var knows_star_will_fall = false # Whether the player knows where a star will fall

func _ready():
	$HUD/StarMessage.rect_size = Vector2(1024, 128)
	$HUD/StarMessage.rect_position = Vector2(0, 768 - $HUD/StarMessage.rect_size.y)
	
func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		go_to_menu()
	if Input.is_action_just_pressed("ui_accept"):
		if not message_has_mouse:
			show_message("")
			
	if removing_menu:
		$Menu.rect_position.y += 1000 * delta
		if $Menu.rect_position.y > 768:
			removing_menu = false

func _on_Sky_star_message(message, will_fall):
	if will_fall:
		knows_star_will_fall = true
	show_message(message)

func _on_Student_close():
	remove_child($Student)

func _on_Sunrise_close():
	get_tree().quit()

func show_message(msg):
	$HUD/StarMessage.scroll_to_line(0)
	$HUD/StarMessage.text = ""
	$HUD/StarMessage.append_bbcode("[center]" + msg + "[/center]")

func _on_StarMessage_mouse_entered():
	message_has_mouse = true

func _on_StarMessage_mouse_exited():
	message_has_mouse = false

const pact_message = "[color=#ff7777]I am pleased you have accepted my bargain. See how the locusts descend already. You will allow great things to come to your world.[/color]"
const no_pact_message = "[color=#ff4444]You disappoint me. May the comet bring all the terrors of your peoples' nightmares.[/color]"

func _on_StarMessage_meta_clicked(meta):
	var pact_star = $Sky/Stars/PactStarSpot
	if meta == "yes":
		accepted_pact = true
		pact_star.message = pact_message
	elif meta == "no":
		pact_star.message = no_pact_message
	pact_star.clicked()

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
	removing_menu = true
	$Menu.fadeout()

func _on_Menu_play():
	play_game()

func go_to_menu():
	removing_menu = false
	$Menu.rect_position.y = 0
	$Menu.fadein()

func _on_MenuButton_pressed():
	go_to_menu()


func _on_Menu_setting_change(setting, state):
	print("Changing setting " + setting + " to ", state)
	if setting == "cursive":
		$HUD/StarMessage.add_font_override("normal_font", load("res://assets/StandardFont.tres") if state == false else null)
