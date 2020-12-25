################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../freertos/croutine.c \
../freertos/event_groups.c \
../freertos/fsl_tickless_lptmr.c \
../freertos/fsl_tickless_systick.c \
../freertos/heap_4.c \
../freertos/list.c \
../freertos/port.c \
../freertos/queue.c \
../freertos/tasks.c \
../freertos/timers.c 

OBJS += \
./freertos/croutine.o \
./freertos/event_groups.o \
./freertos/fsl_tickless_lptmr.o \
./freertos/fsl_tickless_systick.o \
./freertos/heap_4.o \
./freertos/list.o \
./freertos/port.o \
./freertos/queue.o \
./freertos/tasks.o \
./freertos/timers.o 

C_DEPS += \
./freertos/croutine.d \
./freertos/event_groups.d \
./freertos/fsl_tickless_lptmr.d \
./freertos/fsl_tickless_systick.d \
./freertos/heap_4.d \
./freertos/list.d \
./freertos/port.d \
./freertos/queue.d \
./freertos/tasks.d \
./freertos/timers.d 


# Each subdirectory must supply rules for building sources it contributes
freertos/%.o: ../freertos/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCR_INTEGER_PRINTF -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -D__MCUXPRESSO -D__USE_CMSIS -DSDK_OS_FREE_RTOS -DCPU_MKW41Z512VHT4_cm0plus -DCPU_MKW41Z512VHT4 -D__REDLIB__ -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\source" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\drivers" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\profiles\device_info" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\OSAbstraction\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\LED\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\utilities" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\freertos" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\SerialManager\Source\SPI_Adapter" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\Shell\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\profiles\wireless_uart" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\Flash\Internal" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\source\common\gatt_db\macros" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\source\common\gatt_db" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\source\common" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\FunctionLib" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\DCDC\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\TimersManager\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\TimersManager\Source" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\common" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\MemManager\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\Lists" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\GPIO" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\Panic\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\Messaging\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\SerialManager\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\CMSIS" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\SerialManager\Source\I2C_Adapter" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\SecLib" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\board" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\ModuleInfo" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\XCVR\MKW41Z4" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\Keyboard\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\controller\interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\host\interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\host\config" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\RNG\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\SerialManager\Source\UART_Adapter" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\MWSCoexistence\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\hci_transport\interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\NVM\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\NVM\Source" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\profiles\battery" -O0 -fno-common -g -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -imacros "D:/MCUXpressoIDE_workspace/frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test/source/app_preinclude.h" -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


