extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var weaponparamid : String
var weaponname : String
var outputtext : String


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func generatetext():
	weaponparamid = $TB_WeaponParamIDLabel/TB_WeaponParamID.text
	weaponname = $TB_DescriptionLabel/TB_Description.text
	
	outputtext = "<text id=\""+str(weaponparamid)+"0000"+"\">"+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0100"+"\">"+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0200"+"\">"+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0300"+"\">"+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0400"+"\">"+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0500"+"\">"+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0600"+"\">"+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0700"+"\">"+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0800"+"\">"+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0900"+"\">"+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"1000"+"\">"+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"1100"+"\">"+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"1200"+"\">"+str(weaponname)+"</text>"
	
	$TextOutput.text = outputtext
	OS.set_clipboard(outputtext)
	$CopiedText.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_GenerateAffinityTitleButton_pressed():
	generatetext()


func _on_WeapAffDescGen_visibility_changed():
	$TB_WeaponParamIDLabel/TB_WeaponParamID.text = str($"/root/GlobalVariables".baseweaponid)


func _on_TB_WeaponParamID_text_changed():
	$"/root/GlobalVariables".baseweaponid = $TB_WeaponParamIDLabel/TB_WeaponParamID.text
