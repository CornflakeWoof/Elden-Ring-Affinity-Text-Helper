extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var weaponparamid : String
var weaponname : String
var weaponprefix : String
var outputtext : String


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func generatetext():
	weaponparamid = $TB_WeaponParamIDLabel/TB_WeaponParamID.text
	weaponname = $TB_WeaponNameLabel/TB_WeaponName.text
	weaponprefix = $TB_WeaponNamePrefixLabel/TB_WeaponNamePrefix.text
	
	outputtext = "<text id=\""+str(weaponparamid)+"0000"+"\">"+str(weaponprefix)+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0100"+"\">"+str(weaponprefix)+"Heavy "+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0200"+"\">"+str(weaponprefix)+"Keen "+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0300"+"\">"+str(weaponprefix)+"Quality "+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0400"+"\">"+str(weaponprefix)+"Fire "+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0500"+"\">"+str(weaponprefix)+"Flame Art "+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0600"+"\">"+str(weaponprefix)+"Lightning "+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0700"+"\">"+str(weaponprefix)+"Sacred "+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0800"+"\">"+str(weaponprefix)+"Magic "+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"0900"+"\">"+str(weaponprefix)+"Cold "+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"1000"+"\">"+str(weaponprefix)+"Poison "+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"1100"+"\">"+str(weaponprefix)+"Blood "+str(weaponname)+"</text>"+"\n<text id=\""+str(weaponparamid)+"1200"+"\">"+str(weaponprefix)+"Occult "+str(weaponname)+"</text>"
	
	$TextOutput.text = outputtext
	OS.set_clipboard(outputtext)
	$CopiedText.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_GenerateAffinityTitleButton_pressed():
	generatetext()


func _on_WeapAffTextGen_visibility_changed():
	$TB_WeaponParamIDLabel/TB_WeaponParamID.text = str($"/root/GlobalVariables".baseweaponid)


func _on_TB_WeaponParamID_text_changed():
	$"/root/GlobalVariables".baseweaponid = $TB_WeaponParamIDLabel/TB_WeaponParamID.text
