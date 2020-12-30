extends MarginContainer

signal close

export (PackedScene) var Button

var pact = false
var knows_star_will_fall = false

func _ready():
	$DialogManager.start_dialog()

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		if $DialogHelper.mode == $DialogHelper.MODE.SIMPLE:
			$DialogHelper.continue_dialog()

func resize():
	$DialogHelper.resize()

func _on_DialogHelper_close():
	emit_signal("close")
