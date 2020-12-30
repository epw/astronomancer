extends MarginContainer

signal close

export (PackedScene) var Button

enum MODE {SIMPLE, CHOICE}
var mode = MODE.SIMPLE

var last_basic_text
var buttons = []


func _ready():
	$StudentDialogManager.start_dialog()

func resize():
	rect_size = Vector2(1024, 768)
	$VBoxContainer/RichTextLabel.rect_position = Vector2(10, 10) # Doesn't work, no idea why

func continue_dialog():
	clear_buttons()
	$StudentDialogManager.continue_dialog()

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		if mode == MODE.SIMPLE:
			continue_dialog()

func _on_StudentDialogManager_dialog_finished():
	print("Dialog ended")
	if get_parent().is_class("Viewport"): # When node is run directly from editor
		get_tree().quit()
		return

	emit_signal("close")

func add_button(text, callback, data):
	var button = Button.instance()
	$VBoxContainer.add_child(button)
	button.connect("pressed", self, callback, data)
	button.text = text
	buttons.append(button)

func _on_StudentDialogManager_new_speech(speech_codes):
	mode = MODE.SIMPLE
	print(speech_codes)
	var text = PoolStringArray(speech_codes).join("\n\n")
	$VBoxContainer/RichTextLabel.bbcode_text = text
	last_basic_text = text
	add_button("Click to continue", "continue_dialog", [])

func _on_StudentDialogManager_new_choice(choices):
	mode = MODE.CHOICE
	print("Offering choice")
	$VBoxContainer/RichTextLabel.bbcode_text = last_basic_text
	for c in range(choices.size()):
		add_button(choices[c], "_on_Button_pressed", [c])

func clear_buttons():
	for button in buttons:
		$VBoxContainer.remove_child(button)
	buttons = []


func _on_Button_pressed(choice):
	clear_buttons()
	print(choice)
	$StudentDialogManager.choice_picked(choice)

