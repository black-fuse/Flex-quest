extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# DevCardManager.gd
extends Node

const DECK := [
    {"name":"Field Engineer","type":"knight"},
    {"name":"Transmission Expansion","type":"road_building"},
    {"name":"Market Control","type":"monopoly"},
    {"name":"Energy Surplus","type":"year_of_plenty"},
    {"name":"Grid Reliability Rating","type":"vp"},
]

func draw_card(player:Player):
    # Remove from deck and add to player's dev_cards
    pass

func play_field_engineer(player:Player):
    # Move Blackout
    pass

func play_transmission_expansion(player:Player):
    # Place 2 transmission lines for free
    pass

func play_market_control(player:Player, resource:String):
    # Take all of one resource from other players
    pass

func play_energy_surplus(player:Player):
    # Take any 2 resources from the bank
    pass
