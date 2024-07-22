extends Node

var ingredients: Array[Ingredient]
var types : Array[String]
var stats : Array[Vector2[String]]

#simply combines all ingredient types, no doubles
#TODO: resolve contradicting types (e.g. solid+liquid)
func resolve_types():
	
	var types : Array[string]
	
	for ing in ingredients:
		if(!types.has(ing)):
			types.push_back(ing)
			
	return			


func resolve_stats():
	
	var new_stats
	
	# for now..
	# assumption that every stat consists of
	# a name and an amount of + or -
	# can only have + or -!
	
	#resolution steps:
	#strip modifiers to compare base names
	#if not found, add as is and continue with next
	#if same direction, add modifiers, continue
	#if opposite, eliminate modifiers 
	#check if stat has no modifiers left -> remove
	for stat in stats:
		 
		for existing_stat in new_stats:
			if existing_stat.x == stat.x:
				
		
