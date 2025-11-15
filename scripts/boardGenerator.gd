extends Node2D

@export var hex_scene: PackedScene
@export var hex_radius:= 64.0

var layout := [3,4,5,4,3]

var resource_types := [
	"Cables", "Cables", "Cables", "Cables",
	"Transformers", "Transformers", "Transformers",
	"Energy_Credits", "Energy_Credits", "Energy_Credits", "Energy_Credits",
	"Flexible_Loads", "Flexible_Loads", "Flexible_Loads", "Flexible_Loads",
	"Batteries", "Batteries", "Batteries",
    "unpowered_reigon"
]


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	generate_board()


func generate_board():
	var resources = resource_types.duplicate()
	resources.shuffle()

	var row_y := 0
	var index := 0

	for i in range(layout.size()):
		var cols = layout[i]

		# Center the row
		var offset = (layout.max() - cols) * 0.5

		for c in range(cols):
			var hex = hex_scene.instantiate()
			hex.scale = Vector2(0.1,0.1)
			add_child(hex)

			var col_index = c + offset

			# Flat-top hex positioning
			var x = col_index * (hex_radius * 1.5)
			var y = row_y * (hex_radius * sqrt(3)/2)

			hex.position = Vector2(x, y)

			if index < resource_types.size():
				hex.resource_type = resources[index]
				hex.update_visual()
			index += 1

		row_y += 1
