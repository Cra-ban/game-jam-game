@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIITestitem := preload("res://game/inventory_items/testitem/inventory_item_testitem.gd")
const PIIRamSitck := preload("res://game/inventory_items/ram_sitck/inventory_item_ram_sitck.gd")
# ---- classes

# nodes ----
var Testitem: PIITestitem : get = get_Testitem
var RamSitck: PIIRamSitck : get = get_RamSitck
# ---- nodes

# functions ----
func get_Testitem() -> PIITestitem: return get_item_instance("Testitem")
func get_RamSitck() -> PIIRamSitck: return get_item_instance("RamSitck")
# ---- functions

