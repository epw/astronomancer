extends MarginContainer

signal close

export (PackedScene) var Button

enum MODE {SIMPLE, CHOICE}
var mode = MODE.SIMPLE

var last_basic_text
var buttons = []


func _ready():
	$StudentDialogManager.start_dialog()


func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		if mode == MODE.SIMPLE:
			$StudentDialogManager.continue_dialog()


func _on_StudentDialogManager_dialog_finished():
	print("Dialog ended")
	if get_parent().is_class("Viewport"): # When node is run directly from editor
		get_tree().quit()
		return

	emit_signal("close")


func _on_StudentDialogManager_new_speech(speech_codes):
	mode = MODE.SIMPLE
	print(speech_codes)
	var text = PoolStringArray(speech_codes).join("\n\n")
	$VBoxContainer/RichTextLabel.bbcode_text = text
	last_basic_text = text


func _on_StudentDialogManager_new_choice(choices):
	mode = MODE.CHOICE
	print("Offering choice")
	$VBoxContainer/RichTextLabel.bbcode_text = last_basic_text
	for c in range(choices.size()):
		var button = Button.instance()
		$VBoxContainer.add_child(button)
		button.connect("pressed", self, "_on_Button_pressed", [c])
		button.text = choices[c]
		buttons.append(button)


func clear_buttons():
	for button in buttons:
		$VBoxContainer.remove_child(button)
	buttons = []


func _on_Button_pressed(choice):
	clear_buttons()
	print(choice)
	$StudentDialogManager.choice_picked(choice)

