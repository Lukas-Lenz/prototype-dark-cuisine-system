extends Node2D

@export var text_output : Label
@export var text_composite : Label
@export var text_ingredients : Label

@export var composite : Composite
@export var result : Ingredient

var ingredients : Array
var tools : Array


# Called when the node enters the scene tree for the first time.
func _ready():
	ingredients = []
	tools = []


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	var itext = "What I have lying here on the table is...\n"
	
	for ing in ingredients:
		itext.append("\n")
		itext.append(ing.ing_name + ": " + ing.description + "\n")
		
		for st in ing.stats:
			itext.append("Makes you " + st.x + st.y + "\n")
		
		for t in ing.types:
			itext.append("It's " + t + "\n")
		
	
	var ctext = "The sludge on this table consists of: "
	
	for ing in composite.ingredients:
		ctext.append(ing.ing_name + " ")
	
	$Text_Composite.text = ctext
	


func _on_button_blend_pressed():
	composite.ingredients += ingredients
	ingredients.clear()


func _on_button_separate_pressed():
	pass # Replace with function body.


func _on_button_cauldron_pressed():
	pass # Replace with function body.


func _on_button_grill_pressed():
	pass # Replace with function body.


func _on_button_clear_pressed():
	pass # Replace with function body.


func _on_button_apple_pressed():
	pass # Replace with function body.


func _on_button_pinecone_pressed():
	pass # Replace with function body.
