# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\Ian\Projects\school\ensc452\wolfenstein_clone\wolfenstein_system\_ide\scripts\ian_wolfenstein_launch.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\Ian\Projects\school\ensc452\wolfenstein_clone\wolfenstein_system\_ide\scripts\ian_wolfenstein_launch.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248469708" && level==0 && jtag_device_ctx=="jsn-Zed-210248469708-03727093-0"}
fpga -file C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_core_0/_ide/bitstream/wolfenstein_platform_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform_wrapper/export/wolfenstein_platform_wrapper/hw/wolfenstein_platform_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_core_0/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#1"}
dow -data C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/assets/processed/gunshot.sound 0xe2c000
dow -data C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/assets/processed/first_person_gun.sprite 0xe2f000
dow -data C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/assets/processed/main_menu.sprite 0xd00000
dow -data C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/assets/processed/muzzle_flash.sprite 0xe33000
dow -data C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/assets/processed/health_sprite.data 0x18ed208
dow -data C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/assets/processed/enemy.sprite 0xe37000
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_core_0/Debug/wolfenstein_core_0.elf
targets -set -nocase -filter {name =~ "*A9*#1"}
dow C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_core_1/Debug/wolfenstein_core_1.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
targets -set -nocase -filter {name =~ "*A9*#1"}
con
