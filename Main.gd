extends Control

export (PackedScene) var Student

var HUD

func _ready():
	HUD = $CenterContainer/MarginContainer/HUD

func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
	if Input.is_action_just_pressed("ui_accept"):
		if not HUD.message_has_mouse:
			show_message("")

func _on_Sky_star_message(message):
	print("_on_Star_send_message", message)
#	if obscured:
#		return
	show_message(message)

func show_message(msg):
	HUD.show_message(msg)

func _on_HUD_open_student():
	print("_on_HUD_open_student")
#	obscured = true
	show_message("")
	var student = Student.instance()
	add_child(student)
	student.connect("close", self, "_on_Student_close")

func _on_Student_close():
	print("_on_Student_close")
	remove_child($Student)
#	obscured = false
