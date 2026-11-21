@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRTest := preload("res://game/rooms/test/room_test.gd")
const PRBedroom := preload("res://game/rooms/bedroom/room_bedroom.gd")
# ---- classes

# nodes ----
var Test: PRTest : get = get_Test
var Bedroom: PRBedroom : get = get_Bedroom
# ---- nodes

# functions ----
func get_Test() -> PRTest: return get_runtime_room("Test")
func get_Bedroom() -> PRBedroom: return get_runtime_room("Bedroom")
# ---- functions

