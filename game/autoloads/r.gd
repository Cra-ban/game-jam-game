@tool
extends "res://addons/popochiu/engine/interfaces/i_room.gd"

# classes ----
const PRTest := preload("res://game/rooms/test/room_test.gd")
const PRBedroom := preload("res://game/rooms/bedroom/room_bedroom.gd")
const PRDatacenterEntrance := preload("res://game/rooms/datacenter_entrance/room_datacenter_entrance.gd")
const PRDatacenterInside := preload("res://game/rooms/datacenter_inside/room_datacenter_inside.gd")
const PRMotherBoard := preload("res://game/rooms/mother_board/room_mother_board.gd")
# ---- classes

# nodes ----
var Test: PRTest : get = get_Test
var Bedroom: PRBedroom : get = get_Bedroom
var DatacenterEntrance: PRDatacenterEntrance : get = get_DatacenterEntrance
var DatacenterInside: PRDatacenterInside : get = get_DatacenterInside
var MotherBoard: PRMotherBoard : get = get_MotherBoard
# ---- nodes

# functions ----
func get_Test() -> PRTest: return get_runtime_room("Test")
func get_Bedroom() -> PRBedroom: return get_runtime_room("Bedroom")
func get_DatacenterEntrance() -> PRDatacenterEntrance: return get_runtime_room("DatacenterEntrance")
func get_DatacenterInside() -> PRDatacenterInside: return get_runtime_room("DatacenterInside")
func get_MotherBoard() -> PRMotherBoard: return get_runtime_room("MotherBoard")
# ---- functions
