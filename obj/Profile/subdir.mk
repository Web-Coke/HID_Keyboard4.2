################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Profile/battservice.c \
../Profile/devinfoservice.c \
../Profile/hiddev.c \
../Profile/hidkbdservice.c \
../Profile/scanparamservice.c 

OBJS += \
./Profile/battservice.o \
./Profile/devinfoservice.o \
./Profile/hiddev.o \
./Profile/hidkbdservice.o \
./Profile/scanparamservice.o 

C_DEPS += \
./Profile/battservice.d \
./Profile/devinfoservice.d \
./Profile/hiddev.d \
./Profile/hidkbdservice.d \
./Profile/scanparamservice.d 


# Each subdirectory must supply rules for building sources it contributes
Profile/%.o: ../Profile/%.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DDEBUG=1 -I"C:\Users\8\Desktop\EXAM\SRC\Startup" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\APP\include" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\Profile\include" -I"C:\Users\8\Desktop\EXAM\SRC\StdPeriphDriver\inc" -I"C:\Users\8\Desktop\EXAM\BLE\HAL\include" -I"C:\Users\8\Desktop\EXAM\SRC\Ld" -I"C:\Users\8\Desktop\EXAM\BLE\LIB" -I"C:\Users\8\Desktop\EXAM\SRC\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

