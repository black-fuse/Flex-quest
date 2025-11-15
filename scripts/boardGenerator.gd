extends Node2D

@export var hex_scene: main_board
@export var hex_radius:= 64.0

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
	generate_board()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func generate_board():
	var resources = resource_types.duplicate()
	resources.shuffle()
	
	var row_y := 0
	var index := 0
	
	for i in range(layout.size()):
		var cols = layout[i]
		
		var offset = (layout.max())
		pass
