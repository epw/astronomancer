extends Node2D

export (PackedScene) var Student

var HUD
var message_has_mouse = false

func _ready():
	$HUD/StarMessage.rect_size = Vector2(1024, 128)
	$HUD/StarMessage.rect_position = Vector2(0, 768 - $HUD/StarMessage.rect_size.y)
	
func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
	if Input.is_action_just_pressed("ui_accept"):
		if not message_has_mouse:
			show_message("")

	if Input.is_action_just_pressed("ui_right"):
		open_student()

func _on_Sky_star_message(message):
	print("_on_Star_send_message", message)
	show_message(message)

func open_student():
	print("_on_HUD_open_student")
	show_message("")
	var student = Student.instance()
	add_child(student)
	student.rect_size = Vector2(1024, 768)
	student.connect("close", self, "_on_Student_close")

func _on_Student_close():
	print("_on_Student_close")
	remove_child($Student)

func show_message(msg):
	$HUD/StarMessage.scroll_to_line(0)
	$HUD/StarMessage.text = ""
	$HUD/StarMessage.append_bbcode("[center]" + msg + "[/center]")

func _on_StarMessage_mouse_entered():
	message_has_mouse = true

func _on_StarMessage_mouse_exited():
	message_has_mouse = false
