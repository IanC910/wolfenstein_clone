# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Ian\Projects\school\ensc452\vitis_workspace\wolfenstein_platform_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\Ian\Projects\school\ensc452\vitis_workspace\wolfenstein_platform_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {wolfenstein_platform_wrapper}\
-hw {C:\Users\Ian\Projects\school\ensc452\wolfenstein_platform\wolfenstein_platform_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {C:/Users/Ian/Projects/school/ensc452/vitis_workspace}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {wolfenstein_platform_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform active {wolfenstein_platform_wrapper}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_platform/wolfenstein_platform_wrapper.xsa}
platform generate -domains 
platform active {wolfenstein_platform_wrapper}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_platform/wolfenstein_platform_wrapper.xsa}
platform generate -domains 
platform generate
platform clean
platform generate
platform clean
