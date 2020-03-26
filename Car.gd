extends MeshInstance


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
	
func _physics_process(delta):
	self.rotation = self.rotation + Vector3(0,0.02,0)

	
func change_color(color):
	Global.barva = color
	var material = self.get_surface_material(2)
	material.albedo_color = Color(color)
	self.set_surface_material(2, material)
	




