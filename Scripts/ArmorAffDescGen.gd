extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var weaponparamid : String
var weaponname : String

var armor_head : String
var armor_chest : String
var armor_hands : String
var armor_legs : String

var descriptiontext : String

var outputtext : String


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func generatetext(desc):
	weaponparamid = $TB_ArmorParamIDLabel/TB_ArmorParamID.text
	weaponname = $TB_ArmorParamMainName/TB_ArmorName.text
	
	armor_head = $TB_ArmorParamNamesLabel/TB_ArmorHead.text
	armor_chest = $TB_ArmorParamNamesLabel/TB_ArmorChest.text
	armor_hands = $TB_ArmorParamNamesLabel/TB_ArmorHands.text
	armor_legs = $TB_ArmorParamNamesLabel/TB_ArmorLegs.text
	
	descriptiontext = $TB_DescriptionLabel/TB_Description.text
	
	if desc == true:
		gen_description()
	else:
		gen_title()

func gen_description():
	outputtext = "<text id=\""+str(weaponparamid)+"0000"+"\">"+str(armor_head)+" "+str(descriptiontext)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0100"+"\">"+str(armor_chest)+" "+str(descriptiontext)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0200"+"\">"+str(armor_hands)+" "+str(descriptiontext)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0300"+"\">"+str(armor_legs)+" "+str(descriptiontext)+"</text>"
	outputtextnow()

func gen_title():
	outputtext = "<text id=\""+str(weaponparamid)+"0000"+"\">"+str(weaponname)+" "+str(armor_head)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0100"+"\">"+str(weaponname)+" "+str(armor_chest)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0200"+"\">"+str(weaponname)+" "+str(armor_hands)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0300"+"\">"+str(weaponname)+" "+str(armor_legs)+"</text>"
	outputtextnow()
	
func outputtextnow():
	$TextOutput.text = outputtext
	OS.set_clipboard(outputtext)
	$CopiedText.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_GenerateAffinityTitleButton_pressed():
	generatetext(true)

func _on_GenerateAffinityTitleButton2_pressed():
	generatetext(false)
