extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
# TradeManager.gd
extends Node

# Handles player-to-player, bank 4:1, and port 2:1 trades (energy markets)

func trade_with_bank(player:Player, give:String, amount:int)->bool:
    # 4:1 unless player has port for 3:1 or 2:1 for specific resource
    pass

func trade_between_players(p1:Player, offer:Dictionary, p2:Player, request:Dictionary)->bool:
    pass
