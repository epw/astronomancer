extends ViewportContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _on_ViewportContainer_mouse_entered():
	print("_on_ViewportContainer_mouse_entered")

func _input( event ):
	if event is InputEventMouse:
		var mouseEvent = event.duplicate()
		mouseEvent.position = get_global_transform().xform_inv(event.global_position)
		$Viewport.unhandled_input(mouseEvent)
	else:
		$Viewport.unhandled_input(event)
