@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIIRamStick := preload("res://game/inventory_items/ram_stick/inventory_item_ram_stick.gd")
const PIIScrewdriver := preload("res://game/inventory_items/screwdriver/inventory_item_screwdriver.gd")
# ---- classes

# nodes ----
var RamStick: PIIRamStick : get = get_RamStick
var Screwdriver: PIIScrewdriver : get = get_Screwdriver
# ---- nodes

# functions ----
func get_RamStick() -> PIIRamStick: return get_item_instance("RamStick")
func get_Screwdriver() -> PIIScrewdriver: return get_item_instance("Screwdriver")
# ---- functions

