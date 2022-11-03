################################################################################
# 自动生成的文件。不要编辑！
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include StdPeriphDriver/subdir.mk
-include Startup/subdir.mk
-include RVMSIS/subdir.mk
-include Profile/subdir.mk
-include HAL/subdir.mk
-include APP/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
HID_Keyboard4.2.hex \

SECONDARY_LIST += \
HID_Keyboard4.2.lst \

SECONDARY_SIZE += \
HID_Keyboard4.2.siz \


# 所有目标
all: HID_Keyboard4.2.elf secondary-outputs

# 工具调用
HID_Keyboard4.2.elf: $(OBJS) $(USER_OBJS)
	@	@	riscv-none-embed-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medany -msmall-data-limit=8 -mno-save-restore -Os -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -fno-common  -g -T "C:\Users\8\Desktop\EXAM\SRC\Ld\Link.ld" -nostartfiles -Xlinker --gc-sections -s -L"../" -L"C:\Users\8\Desktop\EXAM\BLE\LIB" -L"C:\Users\8\Desktop\EXAM\SRC\StdPeriphDriver" -Xlinker --print-memory-usage -Wl,-Map,"HID_Keyboard4.2.map" --specs=nano.specs -u _printf_float --specs=nosys.specs -o "HID_Keyboard4.2.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@	@
HID_Keyboard4.2.hex: HID_Keyboard4.2.elf
	@	riscv-none-embed-objcopy -O ihex "HID_Keyboard4.2.elf"  "HID_Keyboard4.2.hex"
	@	@
HID_Keyboard4.2.lst: HID_Keyboard4.2.elf
	@	riscv-none-embed-objdump --source --all-headers --demangle --line-numbers --wide -D "HID_Keyboard4.2.elf" > "HID_Keyboard4.2.lst"
	@	@
HID_Keyboard4.2.siz: HID_Keyboard4.2.elf
	@	riscv-none-embed-size --format=berkeley "HID_Keyboard4.2.elf"
	@	@
# 其他目标
clean:
	-$(RM) $(ASM_UPPER_DEPS)$(OBJS)$(SECONDARY_FLASH)$(SECONDARY_LIST)$(SECONDARY_SIZE)$(ASM_DEPS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS) HID_Keyboard4.2.elf
	-@
secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents

-include ../makefile.targets
