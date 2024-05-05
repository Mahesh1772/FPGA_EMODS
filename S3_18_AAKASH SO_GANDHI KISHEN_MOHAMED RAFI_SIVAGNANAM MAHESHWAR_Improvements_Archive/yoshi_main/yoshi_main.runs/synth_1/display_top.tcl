# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.cache/wt [current_project]
set_property parent.project_path C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/background_ghost_rom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/binary2bcd.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/blocks_rom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/coins.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/coins_rom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/debounce.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/enemy_collision.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/flexible_clock.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/game_logo_display.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/game_logo_rom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/game_state_machine.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/gameover_display.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/gameover_rom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/ghost_bottom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/ghost_crazy.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/ghost_crazy_rom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/ghost_normal_rom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/ghost_top.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/grounded.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/hearts_display.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/hearts_rom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/mario_damaged_rom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/mario_rom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/mario_sprite.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/mini_game.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/mini_game_score.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/numbers_rom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/platforms.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/score_display.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/seg_display.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/vga_sync.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/walls_rom.v
  C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/sources_1/new/display_top.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/constrs_1/imports/new/basys3.xdc
set_property used_in_implementation false [get_files C:/Users/bsiva/Desktop/mahesh/University/SEM_4/CG2026/FPGA_EMODS/Big_screen_version/yoshi_main.srcs/constrs_1/imports/new/basys3.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top display_top -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef display_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file display_top_utilization_synth.rpt -pb display_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]