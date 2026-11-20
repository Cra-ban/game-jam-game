@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRHome := preload("res://game/rooms/home/room_home.gd")
const PRHouse := preload("res://game/rooms/house/room_house.gd")
# ---- classes

# nodes ----
var Home: PRHome : get = get_Home
var House: PRHouse : get = get_House
# ---- nodes

# functions ----
func get_Home() -> PRHome: return get_runtime_room("Home")
func get_House() -> PRHouse: return get_runtime_room("House")
# ---- functions

