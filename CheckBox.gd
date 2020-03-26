extends CheckBox


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var pushed = false
var hodnota = 0

# Called when the node enters the scene tree for the first time.
func _on_CheckBox_button_down():
	if pushed == false:
		pushed = true 
		get_tree().get_root().get_node("Spatial").doplnky(hodnota)
	else:
		pushed = false
		get_tree().get_root().get_node("Spatial").doplnky(-hodnota)
