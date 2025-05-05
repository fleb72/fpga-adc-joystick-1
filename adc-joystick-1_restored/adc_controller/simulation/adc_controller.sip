set_global_assignment -entity "adc_controller" -library "lib_adc_controller" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "adc_controller" -library "lib_adc_controller" -name IP_TOOL_VERSION "23.1"
set_global_assignment -entity "adc_controller" -library "lib_adc_controller" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_adc_controller" -name SPD_FILE [file join $::quartus(sip_path) "../adc_controller.spd"]
set_global_assignment -library "lib_adc_controller" -name MISC_FILE [file join $::quartus(sip_path) "../../adc_controller.qsys"]

set_global_assignment -library "lib_adc_controller" -name MISC_FILE [file join $::quartus(sip_path) "adc_controller.v"]
set_global_assignment -library "lib_adc_controller" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_up_avalon_adv_adc.v"]
set_global_assignment -library "lib_adc_controller" -name MISC_FILE [file join $::quartus(sip_path) "submodules/adc_controller_adc_mega_0.v"]
