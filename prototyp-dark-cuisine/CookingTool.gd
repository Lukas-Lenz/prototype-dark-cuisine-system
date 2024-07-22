class_name CookingTool extends Node

@export var recipes : Dictionary

func resolve_recipe(composite : Composite):
	
	
	for rec_name in recipes:
		
		current_recipe = rec_name
		still_needed = recipes[current_recipe]
		available = composite.ingredients

		#first eliminate direct matches
		for needed in still_needed:
			
			for ing in available:
				
				if(ing.name == needed):
					available.erase(ing)
					still_needed.erase(needed)	#TODO: does this break iteration?
					break
		
		#then eliminate type matches
		for needed in still_needed:
			
