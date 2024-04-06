# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Ian\Projects\school\ensc452\wolfenstein_clone\wolfenstein_platform_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\Ian\Projects\school\ensc452\wolfenstein_clone\wolfenstein_platform_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {wolfenstein_platform_wrapper}\
-hw {C:\Users\Ian\Projects\school\ensc452\wolfenstein_clone\wolfenstein_platform\wolfenstein_platform_wrapper.xsa}\
-proc {ps7_cortexa9_1} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone}

platform write
platform generate -domains 
platform generate
bsp reload
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -DUSE_"
bsp config extra_compiler_flags "-mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -nostartfiles -g -Wall -Wextra -DUSE_AMP=1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
domain create -name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -arch {32-bit} -display-name {standalone on ps7_cortexa9_0} -desc {} -runtime {cpp}
platform generate -domains 
platform write
domain -report -json
platform generate -domains standalone_ps7_cortexa9_0 
platform clean
platform generate
platform active {wolfenstein_platform_wrapper}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform_wrapper.xsa}
platform generate
platform active {wolfenstein_platform_wrapper}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform_wrapper.xsa}
platform generate -domains 
platform generate -domains standalone_ps7_cortexa9_0,standalone_domain 
platform clean
platform generate
platform clean
platform generate
platform generate -domains standalone_ps7_cortexa9_0,standalone_domain,zynq_fsbl 
platform generate
platform active {wolfenstein_platform_wrapper}
platform config -updatehw {C:/Users/Amrit/Documents/GitHub/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform_wrapper.xsa}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform_wrapper.xsa}
platform generate -domains 
platform active {wolfenstein_platform_wrapper}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform_wrapper.xsa}
platform generate -domains 
platform active {wolfenstein_platform_wrapper}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform_wrapper.xsa}
platform generate -domains 
platform clean
platform generate
platform active {wolfenstein_platform_wrapper}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/wolfenstein_platform/wolfenstein_platform_wrapper.xsa}
platform generate -domains 
