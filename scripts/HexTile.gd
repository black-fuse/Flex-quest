extends Node2D

@export var resource_type := ""

func _ready():
	update_visual()

func update_visual():
	var sprite = $Sprite2D

	match resource_type:
		"wood":
			sprite.texture = preload("res://IMAGES/Designer (1).png")
		"brick":
			sprite.texture = preload("res://IMAGES/Designer (2).png")
		"wheat":
			sprite.texture = preload("res://IMAGES/Designer (3).png")
		"sheep":
			sprite.texture = preload("res://IMAGES/Designer (4).png")
		"ore":
			sprite.texture = preload("res://IMAGES/Designer (5).png")
		"desert":
			sprite.texture = preload("res://IMAGES/blank_hex.png")
