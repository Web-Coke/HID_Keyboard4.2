################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../APP/Main.c 

OBJS += \
./APP/Main.o 

C_DEPS += \
./APP/Main.d 


# Each subdirectory must supply rules for building sources it contributes
APP/%.o: ../APP/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DDEBUG=1 -I"C:\Users\8\Desktop\EXAM\SRC\Startup" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\APP\include" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\Profile\include" -I"C:\Users\8\Desktop\EXAM\SRC\StdPeriphDriver\inc" -I"C:\Users\8\Desktop\EXAM\BLE\HAL\include" -I"C:\Users\8\Desktop\EXAM\SRC\Ld" -I"C:\Users\8\Desktop\EXAM\BLE\LIB" -I"C:\Users\8\Desktop\EXAM\SRC\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

