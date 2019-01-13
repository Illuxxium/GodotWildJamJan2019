extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var input: String = ""
export(NodePath) var textLabel

func _ready():
	add_user_signal("text_interpreted")
	connect("text_interpreted", get_node(textLabel), "SetNewText")

func Interpret(var inputText : String):
	print(inputText)
	emit_signal("text_interpreted", inputText)

func _on_LineEdit_text_entered(new_text):
	Interpret(new_text)
