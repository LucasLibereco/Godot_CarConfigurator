extends Spatial

var checkbox_tscn = preload ("res://CheckBox.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cena_komb = [[29540,29605,29937],[30700,30765,30765],[26920,26985,27317],[28270,28335,28667],
[28320,28320,28717],[29850,29915,30247],[31100,31100,31497],[34480,34545,34877]]

var doplnky = [["Vyhřívané sedadlo řidiče",249],["Posilovač řízení",1776],["Sedadla řidiče a spolujezdce s opěrkami",473],["Dvojité sedadlo pro spolujezdce",332],["Kontrolka duálního okruhu a ruční brzdy",67],["Kryt zavazadlového prostoru",473],["Otočné sedadlo spolujezdce",243]]

var motor = 0
var pocet_mist = 0

   

func _on_Timer_timeout():
	$Sprite.visible = !$Sprite.visible



# Called when the node enters the scene tree for the first time.
func _ready():
	#$Control/ScrollContainer/VBoxContainer.add
	Global.cena_motor_a_pocet_mist = cena_komb[motor][pocet_mist]
	$Control/Container/Label.zmena_ceny()
	nastav_doplnky()
	


	


	
	

func _on_OptionButton_item_selected(id):
	if id == 0:
		$Car.change_color("5a0a09")
	elif id == 1:
		$Car.change_color("a26900")
	elif id == 2:
		$Car.change_color("bb8f0c")


func _on_EngineButton_item_selected(id):
	motor = id
	vypis_cenu()
	
func _on_SeatsButton_item_selected(id):
	pocet_mist = id
	vypis_cenu()

func vypis_cenu():
	
	Global.cena_motor_a_pocet_mist = cena_komb[motor][pocet_mist]
	$Control/Container/Label.zmena_ceny()
	
	
func nastav_doplnky():
	
	for i in range(doplnky.size()):
		var checkbox = checkbox_tscn.instance()
		checkbox.set_name("checkbox"+str(i))
		checkbox.set_text(doplnky[i][0] + " (cena: "+ str(doplnky[i][1])+")")
		checkbox.hodnota = doplnky[i][1]
		$Control/ScrollContainer/VBoxContainer.add_child(checkbox)
	
	
func doplnky(a):
	Global.cena = Global.cena + a
	$Control/Container/Label.zmena_ceny()
	
