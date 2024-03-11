#
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Ian\Projects\school\ensc452\wolfenstein_clone\audio_hw_platform\platform.tcl
#
# OR launch xsct and run below command.
# source C:\Users\Ian\Projects\school\ensc452\wolfenstein_clone\audio_hw_platform\platform.tcl
#
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {audio_hw_platform}\
-hw {C:\Users\Ian\Projects\school\ensc452\audio_hw\audio_hw_platform_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone}

platform write
platform generate -domains
platform active {audio_hw_platform}
platform active {audio_hw_platform}
domain active {zynq_fsbl}
domain active {standalone_domain}
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp reload
platform active {audio_hw_platform}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/audio_hw/audio_hw_platform_wrapper.xsa}
platform generate
platform active {audio_hw_platform}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/audio_hw/audio_hw_platform_wrapper.xsa}
platform generate -domains 
platform active {audio_hw_platform}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/audio_hw/audio_hw_platform_wrapper.xsa}
platform generate -domains 
platform active {audio_hw_platform}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/audio_hw/audio_hw_platform_wrapper.xsa}
platform generate -domains 
platform active {audio_hw_platform}
platform config -updatehw {C:/Users/Ian/Projects/school/ensc452/wolfenstein_clone/audio_hw/audio_hw_platform_wrapper.xsa}
platform generate -domains 
