@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIIRamSitck := preload("res://game/inventory_items/ram_sitck/inventory_item_ram_sitck.gd")
# ---- classes

# nodes ----
var RamSitck: PIIRamSitck : get = get_RamSitck
# ---- nodes

# functions ----
func get_RamSitck() -> PIIRamSitck: return get_item_instance("RamSitck")
# ---- functions

