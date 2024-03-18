# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "HOLD_PERIOD_CYCLES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_BUTTONS" -parent ${Page_0}


}

proc update_PARAM_VALUE.HOLD_PERIOD_CYCLES { PARAM_VALUE.HOLD_PERIOD_CYCLES } {
	# Procedure called to update HOLD_PERIOD_CYCLES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.HOLD_PERIOD_CYCLES { PARAM_VALUE.HOLD_PERIOD_CYCLES } {
	# Procedure called to validate HOLD_PERIOD_CYCLES
	return true
}

proc update_PARAM_VALUE.NUM_BUTTONS { PARAM_VALUE.NUM_BUTTONS } {
	# Procedure called to update NUM_BUTTONS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_BUTTONS { PARAM_VALUE.NUM_BUTTONS } {
	# Procedure called to validate NUM_BUTTONS
	return true
}


proc update_MODELPARAM_VALUE.NUM_BUTTONS { MODELPARAM_VALUE.NUM_BUTTONS PARAM_VALUE.NUM_BUTTONS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_BUTTONS}] ${MODELPARAM_VALUE.NUM_BUTTONS}
}

proc update_MODELPARAM_VALUE.HOLD_PERIOD_CYCLES { MODELPARAM_VALUE.HOLD_PERIOD_CYCLES PARAM_VALUE.HOLD_PERIOD_CYCLES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.HOLD_PERIOD_CYCLES}] ${MODELPARAM_VALUE.HOLD_PERIOD_CYCLES}
}

