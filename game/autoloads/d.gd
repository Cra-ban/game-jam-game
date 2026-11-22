@tool
extends "res://addons/popochiu/engine/interfaces/i_dialog.gd"

# classes ----
const PDSlopBbt := preload("res://game/dialogs/slop_bbt/dialog_slop_bbt.gd")
const PDTerDialog := preload("res://game/dialogs/ter_dialog/dialog_ter_dialog.gd")
# ---- classes

# nodes ----
var SlopBbt: PDSlopBbt : get = get_SlopBbt
var TerDialog: PDTerDialog : get = get_TerDialog
# ---- nodes

# functions ----
func get_SlopBbt() -> PDSlopBbt: return get_instance("SlopBbt")
func get_TerDialog() -> PDTerDialog: return get_instance("TerDialog")
# ---- functions

