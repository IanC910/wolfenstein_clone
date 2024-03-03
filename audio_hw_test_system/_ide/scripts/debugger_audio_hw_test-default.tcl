# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\Ian\Projects\school\ensc452\wolfenstein_clone\audio_hw_test_system\_ide\scripts\debugger_audio_hw_test-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\Ian\Projects\school\ensc452\wolfenstein_clone\audio_hw_test_system\_ide\scripts\debugger_audio_hw_test-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248469708" && level==0 && jtag_device_ctx=="jsn-Zed-210248469708-03727093-0"}
fpga -file C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/audio_hw_test/_ide/bitstream/audio_hw_platform_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/audio_hw_platform/export/audio_hw_platform/hw/audio_hw_platform_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/audio_hw_test/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow -data C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/assets/gunshot.audioData 0x18d0000
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/audio_hw_test/Debug/audio_hw_test.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
