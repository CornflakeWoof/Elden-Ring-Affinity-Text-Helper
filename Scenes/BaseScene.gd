extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var scenetoload : PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	
	$"/root/GlobalVariables".baseweaponid = 200
	
	$GeneratorMode.add_item("Weapon Title Affinity Generator", 2)
	$GeneratorMode.add_item("Weapon Description Affinity Generator", 3)
	
	$WeapAffTextGen.visible = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func hideallscenes():
	$WeapAffTextGen.visible = false
	$WeapAffDescGen.visible = false

func _on_GeneratorMode_item_selected(index):
	print(index)
	hideallscenes()
	match index:
		1:
			$WeapAffDescGen.visible = true
		_:
			$WeapAffTextGen.visible = true
	
	pass # Replace with function body.
