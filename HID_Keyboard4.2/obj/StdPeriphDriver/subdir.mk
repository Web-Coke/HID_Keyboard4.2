################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_adc.c \
C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_clk.c \
C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_gpio.c \
C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_pwr.c \
C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_sys.c \
C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_uart1.c \
C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_usbhostBase.c \
C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_usbhostClass.c 

OBJS += \
./StdPeriphDriver/CH57x_adc.o \
./StdPeriphDriver/CH57x_clk.o \
./StdPeriphDriver/CH57x_gpio.o \
./StdPeriphDriver/CH57x_pwr.o \
./StdPeriphDriver/CH57x_sys.o \
./StdPeriphDriver/CH57x_uart1.o \
./StdPeriphDriver/CH57x_usbhostBase.o \
./StdPeriphDriver/CH57x_usbhostClass.o 

C_DEPS += \
./StdPeriphDriver/CH57x_adc.d \
./StdPeriphDriver/CH57x_clk.d \
./StdPeriphDriver/CH57x_gpio.d \
./StdPeriphDriver/CH57x_pwr.d \
./StdPeriphDriver/CH57x_sys.d \
./StdPeriphDriver/CH57x_uart1.d \
./StdPeriphDriver/CH57x_usbhostBase.d \
./StdPeriphDriver/CH57x_usbhostClass.d 


# Each subdirectory must supply rules for building sources it contributes
StdPeriphDriver/CH57x_adc.o: C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_adc.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DDEBUG=1 -I"C:\Users\8\Desktop\EXAM\SRC\Startup" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\APP\include" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\Profile\include" -I"C:\Users\8\Desktop\EXAM\SRC\StdPeriphDriver\inc" -I"C:\Users\8\Desktop\EXAM\BLE\HAL\include" -I"C:\Users\8\Desktop\EXAM\SRC\Ld" -I"C:\Users\8\Desktop\EXAM\BLE\LIB" -I"C:\Users\8\Desktop\EXAM\SRC\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
StdPeriphDriver/CH57x_clk.o: C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_clk.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DDEBUG=1 -I"C:\Users\8\Desktop\EXAM\SRC\Startup" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\APP\include" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\Profile\include" -I"C:\Users\8\Desktop\EXAM\SRC\StdPeriphDriver\inc" -I"C:\Users\8\Desktop\EXAM\BLE\HAL\include" -I"C:\Users\8\Desktop\EXAM\SRC\Ld" -I"C:\Users\8\Desktop\EXAM\BLE\LIB" -I"C:\Users\8\Desktop\EXAM\SRC\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
StdPeriphDriver/CH57x_gpio.o: C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_gpio.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DDEBUG=1 -I"C:\Users\8\Desktop\EXAM\SRC\Startup" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\APP\include" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\Profile\include" -I"C:\Users\8\Desktop\EXAM\SRC\StdPeriphDriver\inc" -I"C:\Users\8\Desktop\EXAM\BLE\HAL\include" -I"C:\Users\8\Desktop\EXAM\SRC\Ld" -I"C:\Users\8\Desktop\EXAM\BLE\LIB" -I"C:\Users\8\Desktop\EXAM\SRC\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
StdPeriphDriver/CH57x_pwr.o: C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_pwr.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DDEBUG=1 -I"C:\Users\8\Desktop\EXAM\SRC\Startup" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\APP\include" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\Profile\include" -I"C:\Users\8\Desktop\EXAM\SRC\StdPeriphDriver\inc" -I"C:\Users\8\Desktop\EXAM\BLE\HAL\include" -I"C:\Users\8\Desktop\EXAM\SRC\Ld" -I"C:\Users\8\Desktop\EXAM\BLE\LIB" -I"C:\Users\8\Desktop\EXAM\SRC\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
StdPeriphDriver/CH57x_sys.o: C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_sys.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DDEBUG=1 -I"C:\Users\8\Desktop\EXAM\SRC\Startup" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\APP\include" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\Profile\include" -I"C:\Users\8\Desktop\EXAM\SRC\StdPeriphDriver\inc" -I"C:\Users\8\Desktop\EXAM\BLE\HAL\include" -I"C:\Users\8\Desktop\EXAM\SRC\Ld" -I"C:\Users\8\Desktop\EXAM\BLE\LIB" -I"C:\Users\8\Desktop\EXAM\SRC\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
StdPeriphDriver/CH57x_uart1.o: C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_uart1.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DDEBUG=1 -I"C:\Users\8\Desktop\EXAM\SRC\Startup" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\APP\include" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\Profile\include" -I"C:\Users\8\Desktop\EXAM\SRC\StdPeriphDriver\inc" -I"C:\Users\8\Desktop\EXAM\BLE\HAL\include" -I"C:\Users\8\Desktop\EXAM\SRC\Ld" -I"C:\Users\8\Desktop\EXAM\BLE\LIB" -I"C:\Users\8\Desktop\EXAM\SRC\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
StdPeriphDriver/CH57x_usbhostBase.o: C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_usbhostBase.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DDEBUG=1 -I"C:\Users\8\Desktop\EXAM\SRC\Startup" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\APP\include" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\Profile\include" -I"C:\Users\8\Desktop\EXAM\SRC\StdPeriphDriver\inc" -I"C:\Users\8\Desktop\EXAM\BLE\HAL\include" -I"C:\Users\8\Desktop\EXAM\SRC\Ld" -I"C:\Users\8\Desktop\EXAM\BLE\LIB" -I"C:\Users\8\Desktop\EXAM\SRC\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@
StdPeriphDriver/CH57x_usbhostClass.o: C:/Users/8/Desktop/EXAM/SRC/StdPeriphDriver/CH57x_usbhostClass.c
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -DDEBUG=1 -I"C:\Users\8\Desktop\EXAM\SRC\Startup" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\APP\include" -I"C:\Users\8\Desktop\EXAM\BLE\HID_Keyboard\Profile\include" -I"C:\Users\8\Desktop\EXAM\SRC\StdPeriphDriver\inc" -I"C:\Users\8\Desktop\EXAM\BLE\HAL\include" -I"C:\Users\8\Desktop\EXAM\SRC\Ld" -I"C:\Users\8\Desktop\EXAM\BLE\LIB" -I"C:\Users\8\Desktop\EXAM\SRC\RVMSIS" -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@	@

