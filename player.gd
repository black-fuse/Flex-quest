extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var id := 0
var color := Color(1,1,1)
var resources := {
    "Transformers":0,
    "Power Lines":0,
    "Flex Loads":0,
    "Energy Credits":0,
    "Batteries":0
}
var settlements := []
var cities := []
var roads := []
var dev_cards := []
var victory_points := 0
var carbon_penalty := 0

func add_resource(name:String, amount:int=1):
    resources[name] += amount

func can_build_transmission_line()->bool:
    return resources["Power Lines"] >= 1 and resources["Hydro?"] == 0 # placeholder; costs handled in BuildManager

func build_settlement():
    # Spend: Transformers + Power Lines + Flex Loads + Energy Credits
    pass

func build_city():
    # Spend: 3x Energy Credits? Adapted to Batteries/Hydro; use config
    pass

func play_dev_card(card_name:String):
    pass
