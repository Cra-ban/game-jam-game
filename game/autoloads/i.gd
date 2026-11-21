@tool
extends "res://addons/popochiu/engine/interfaces/i_inventory.gd"

# classes ----
const PIITestitem := preload("res://game/inventory_items/testitem/inventory_item_testitem.gd")
# ---- classes

# nodes ----
var Testitem: PIITestitem : get = get_Testitem
# ---- nodes

# functions ----
func get_Testitem() -> PIITestitem: return get_item_instance("Testitem")
# ---- functions

