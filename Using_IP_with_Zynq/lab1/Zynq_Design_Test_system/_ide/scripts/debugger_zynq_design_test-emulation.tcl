# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\wdb87\Documents\LabA\Using_IP_with_Zynq\lab1\Zynq_Design_Test_system\_ide\scripts\debugger_zynq_design_test-emulation.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\wdb87\Documents\LabA\Using_IP_with_Zynq\lab1\Zynq_Design_Test_system\_ide\scripts\debugger_zynq_design_test-emulation.tcl
# 
connect -url tcp:localhost:4355
targets 3
dow C:/Users/wdb87/Documents/LabA/Using_IP_with_Zynq/lab1/Zynq_Design_Test/Debug/Zynq_Design_Test.elf
targets 3
con
