set projDir "D:/Alchitry/ColourCombinator/work/planAhead"
set projName "ColourCombinator"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "D:/Alchitry/ColourCombinator/work/verilog/mojo_top_0.v" "D:/Alchitry/ColourCombinator/work/verilog/reset_conditioner_1.v" "D:/Alchitry/ColourCombinator/work/verilog/edge_detector_2.v" "D:/Alchitry/ColourCombinator/work/verilog/button_conditioner_3.v" "D:/Alchitry/ColourCombinator/work/verilog/multi_seven_seg_4.v" "D:/Alchitry/ColourCombinator/work/verilog/questionselector_5.v" "D:/Alchitry/ColourCombinator/work/verilog/pn_gen_6.v" "D:/Alchitry/ColourCombinator/work/verilog/aluCompiled_7.v" "D:/Alchitry/ColourCombinator/work/verilog/bin_to_dec_8.v" "D:/Alchitry/ColourCombinator/work/verilog/counter_9.v" "D:/Alchitry/ColourCombinator/work/verilog/decoder_10.v" "D:/Alchitry/ColourCombinator/work/verilog/pipeline_11.v" "D:/Alchitry/ColourCombinator/work/verilog/counter_12.v" "D:/Alchitry/ColourCombinator/work/verilog/seven_seg_13.v" "D:/Alchitry/ColourCombinator/work/verilog/decoder_14.v" "D:/Alchitry/ColourCombinator/work/verilog/adder16b_15.v" "D:/Alchitry/ColourCombinator/work/verilog/compare16b_16.v" "D:/Alchitry/ColourCombinator/work/verilog/boolean16b_17.v" "D:/Alchitry/ColourCombinator/work/verilog/shifter16b_18.v" ]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "D:/Alchitry/ColourCombinator/constraint/user.ucf" "C:/Program\ Files/Alchitry/Alchitry\ Labs/library/components/mojo.ucf" ]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
