extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

const HEX_COUNT := 19
var hexes := [] # Array[Hex]
var number_tokens := [] # 2-12 distribution excluding 7
var ports := []

func generate_hex_map():
    # Create hex tiles with energy-themed terrain
    pass

func place_numbers():
    # Assign numbers to hexes; desert/unpowered gets none
    pass

func place_ports():
    # Place ports/energy markets around the board
    pass

func roll_dice():
    var d1 = randi_range(1,6)
    var d2 = randi_range(1,6)
    return d1 + d2

func produce_resources(roll:int):
    for hex in hexes:
        if hex.number == roll and not hex.is_blackout:
            hex.distribute_resources_to_adjacent_players()

func init_blackout():
    # Put blackout token on the Unpowered Region (desert) by default
    pass

func move_blackout_to_selected_hex(player_id:int):
    # UI picks hex; set is_blackout=true on that hex and false elsewhere
    pass
