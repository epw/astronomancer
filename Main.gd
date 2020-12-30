extends Node2D

export (PackedScene) var Student

var HUD
var message_has_mouse = false

var accepted_pact = false

func _ready():
	$HUD/StarMessage.rect_size = Vector2(1024, 128)
	$HUD/StarMessage.rect_position = Vector2(0, 768 - $HUD/StarMessage.rect_size.y)
#	$HUD/StarMessage.margin_left = 10
#	$HUD/StarMessage.margin_right = 10
#	$HUD/StarMessage.margin_bottom = 10
	
func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
	if Input.is_action_just_pressed("ui_accept"):
		if not message_has_mouse:
			show_message("")

#	if Input.is_action_just_pressed("ui_right"):
#		open_student()

func _on_Sky_star_message(message):
	show_message(message)

func open_student():
	show_message("")
	var student = Student.instance()
	add_child(student)
	student.rect_size = Vector2(1024, 768)
	student.connect("close", self, "_on_Student_close")

func _on_Student_close():
	remove_child($Student)

func show_message(msg):
	$HUD/StarMessage.scroll_to_line(0)
	$HUD/StarMessage.text = ""
	$HUD/StarMessage.append_bbcode("[center]" + msg + "[/center]")

func _on_StarMessage_mouse_entered():
	message_has_mouse = true

func _on_StarMessage_mouse_exited():
	message_has_mouse = false

func _on_StudentButton_pressed():
	open_student()

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
