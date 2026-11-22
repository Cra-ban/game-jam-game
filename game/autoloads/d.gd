@tool
extends "res://addons/popochiu/engine/interfaces/i_dialog.gd"

# classes ----
const PDSlopBbt := preload("res://game/dialogs/slop_bbt/dialog_slop_bbt.gd")
# ---- classes

# nodes ----
var SlopBbt: PDSlopBbt : get = get_SlopBbt
# ---- nodes

# functions ----
func get_SlopBbt() -> PDSlopBbt: return get_instance("SlopBbt")
# ---- functions

