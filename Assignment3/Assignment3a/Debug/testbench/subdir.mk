################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../MatrixMult_tb.cpp 

OBJS += \
./testbench/MatrixMult_tb.o 

CPP_DEPS += \
./testbench/MatrixMult_tb.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/MatrixMult_tb.o: /home/linux/Assignment3a/MatrixMult_tb.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/tools/Xilinx/Vivado/2018.3/lnx64/tools/systemc/include -I/tools/Xilinx/Vivado/2018.3/lnx64/tools/auto_cc/include -I/tools/Xilinx/Vivado/2018.3/include -I/home/linux -I/tools/Xilinx/Vivado/2018.3/include/ap_sysc -I/tools/Xilinx/Vivado/2018.3/include/etc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


