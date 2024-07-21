class_name Ingredient
extends Node2D

@export var ing_name : String
@export var description : String
@export var stats : Array
@export var types : Array

func _init(p_name = "", p_description = "", p_stats = [], p_types = []):
	ing_name = p_name
	stats = p_stats
	description = p_description
	types = p_types
