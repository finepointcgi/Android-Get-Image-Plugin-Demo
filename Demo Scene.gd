extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var godotImagePlugin

# Called when the node enters the scene tree for the first time.
func _ready():
	if Engine.has_singleton("GodotGetImage"):
		godotImagePlugin = Engine.get_singleton("GodotGetImage")
		
		godotImagePlugin.connect("image_request_completed",self, "imageRequestComplete")
		
	pass # Replace with function body.




func imageRequestComplete(byteArray):
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_button_up():
	if godotImagePlugin:
		godotImagePlugin.getGalleryImage()
	pass # Replace with function body.
