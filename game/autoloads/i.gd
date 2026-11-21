@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIIRamStick := preload("res://game/inventory_items/ram_stick/inventory_item_ram_stick.gd")
# ---- classes

# nodes ----
var RamStick: PIIRamStick : get = get_RamStick
# ---- nodes

# functions ----
func get_RamStick() -> PIIRamStick: return get_item_instance("RamStick")
# ---- functions

