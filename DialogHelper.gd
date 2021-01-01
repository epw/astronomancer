extends Node2D

# Messy helper node to let dialogs reuse code
# There's surely a better way to do this.

signal close

var dialog_scene

enum MODE {SIMPLE, CHOICE}
var mode = MODE.SIMPLE

var last_basic_text
var buttons = []

func _ready():
	dialog_scene = get_parent()
#	dialog_scene.get_node("DialogManager").start_dialog("")

func resize():
	dialog_scene.rect_size = Vector2(1024, 768)
	dialog_scene.get_node("VBoxContainer/RichTextLabel").rect_position = Vector2(10, 10) # Doesn't work, no idea why

func continue_dialog():
	clear_buttons()
	dialog_scene.get_node("DialogManager").continue_dialog()

func _on_DialogManager_dialog_finished():
	if dialog_scene.get_parent().is_class("Viewport"): # When node is run directly from editor
		get_tree().quit()
		return

	emit_signal("close")

func add_button(text, callback, data):
	var button = dialog_scene.Button.instance()
	dialog_scene.get_node("VBoxContainer").add_child(button)
	button.connect("pressed", self, callback, data)
	button.text = text
	buttons.append(button)

func _on_DialogManager_new_speech(speech_codes):
	mode = MODE.SIMPLE
	var text = PoolStringArray(speech_codes).join("\n\n")
	dialog_scene.get_node("VBoxContainer/RichTextLabel").bbcode_text = text
	last_basic_text = text
	add_button("(Click to continue)", "continue_dialog", [])

func _on_DialogManager_new_choice(choices):
	mode = MODE.CHOICE
	dialog_scene.get_node("VBoxContainer/RichTextLabel").bbcode_text = last_basic_text
	for c in range(choices.size()):
		add_button(choices[c], "_on_Button_pressed", [c])

func clear_buttons():
	for button in buttons:
		dialog_scene.get_node("VBoxContainer").remove_child(button)
	buttons = []


func _on_Button_pressed(choice):
	clear_buttons()
	dialog_scene.get_node("DialogManager").choice_picked(choice)
