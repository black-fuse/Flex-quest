extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# GameManager.gd
extends Node

signal turn_started(current_player_id)
signal turn_ended(current_player_id)

const TOTAL_ROUNDS := 12
var round := 1
var current_player := 0
var players := [] # Array[Player]
var board := null # Board
var blackout := null # Robber replacement

func _ready():
	board = get_node("/root/Board")
	players = get_tree().get_nodes_in_group("players")
	_setup_game()

func _setup_game():
	board.generate_hex_map() # 19 hexes
	board.place_numbers()
	board.place_ports()
	blackout = board.init_blackout()
	_initial_placement()
	_start_turn()

func _initial_placement():
	# Snake order placement for 2 settlements (Local Substations) + 2 roads (Transmission Lines)
	pass

func _start_turn():
	emit_signal("turn_started", current_player)
	var roll := board.roll_dice()
	if roll == 7:
		_handle_blackout_phase()
	else:
		board.produce_resources(roll)
	# After production, allow trading and building

func end_turn():
	_check_demand_satisfaction()
	current_player = (current_player + 1) % players.size()
	if current_player == 0:
		round += 1
		if round > TOTAL_ROUNDS:
			_end_game()
			return
	_start_turn()

func _handle_blackout_phase():
	# Current player must move the Blackout and may steal a resource
	board.move_blackout_to_selected_hex(current_player)

func _check_demand_satisfaction():
	# Each player must meet mandatory demand if any demand tokens are on adjacent hexes
	# Unmet demand -> penalty points; perfect satisfaction -> bonus
	pass

func _end_game():
	# Calculate points: settlements, cities, longest line, largest flexibility network, demand bonuses
	# Show winner screen
	pass
