extends Node2D

@export var resource_type := ""

func _ready():
	update_visual()

func update_visual():
	var sprite = $Sprite2D

	match resource_type:
		"Cables":
			sprite.texture = preload("res://IMAGES/Cables.png")
		"Batteries":
			sprite.texture = preload("res://IMAGES/Batteries.png")
		"Energy_Credits":
			sprite.texture = preload("res://IMAGES/Energy_Credits.png")
		"Flexible_Loads":
			sprite.texture = preload("res://IMAGES/Flexible_Loads.png")
		"Transformers":
			sprite.texture = preload("res://IMAGES/Transformers.png")
		"desert":
			sprite.texture = preload("res://IMAGES/unpowered_reigon.png")
