extends Node2D

@export var hex_scene: main_board

var layout := [3,4,5,4,3]

var resource_types := [
	"Cables", "Cables", "Cables", "Cables",
	"Transformers", "Transformers", "Transformers",
	"Energy Credits", "Energy Credits", "Energy Credits", "Energy Credits",
	"Flexible Loads", "Flexible Loads", "Flexible Loads", "Flexible Loads",
	"Batteries", "Batteries", "Batteries",
    "unpowered reigon"
]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
