extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
	
func _physics_process(delta):
	self.rotation = self.rotation + Vector3(0,0.02,0)


func _on_ColorPickerButton_color_changed(color):
	var material = self.get_surface_material(2)
	material.albedo_color = color
	self.set_surface_material(2, material)


	
func change_color(color):
	var material = self.get_surface_material(2)
	material.albedo_color = Color(color)
	self.set_surface_material(2, material)
	



func _on_OptionButton_item_selected(id):
	if id == 0:
		change_color("5a0a09")
	elif id == 1:
		change_color("a26900")
	elif id == 2:
		change_color("bb8f0c")
