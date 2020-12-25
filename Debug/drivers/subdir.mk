################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../drivers/fsl_adc16.c \
../drivers/fsl_clock.c \
../drivers/fsl_common.c \
../drivers/fsl_dspi.c \
../drivers/fsl_dspi_freertos.c \
../drivers/fsl_flash.c \
../drivers/fsl_gpio.c \
../drivers/fsl_i2c.c \
../drivers/fsl_i2c_freertos.c \
../drivers/fsl_llwu.c \
../drivers/fsl_lptmr.c \
../drivers/fsl_lpuart.c \
../drivers/fsl_lpuart_freertos.c \
../drivers/fsl_ltc.c \
../drivers/fsl_pmc.c \
../drivers/fsl_rtc.c \
../drivers/fsl_smc.c \
../drivers/fsl_tpm.c \
../drivers/fsl_trng.c 

OBJS += \
./drivers/fsl_adc16.o \
./drivers/fsl_clock.o \
./drivers/fsl_common.o \
./drivers/fsl_dspi.o \
./drivers/fsl_dspi_freertos.o \
./drivers/fsl_flash.o \
./drivers/fsl_gpio.o \
./drivers/fsl_i2c.o \
./drivers/fsl_i2c_freertos.o \
./drivers/fsl_llwu.o \
./drivers/fsl_lptmr.o \
./drivers/fsl_lpuart.o \
./drivers/fsl_lpuart_freertos.o \
./drivers/fsl_ltc.o \
./drivers/fsl_pmc.o \
./drivers/fsl_rtc.o \
./drivers/fsl_smc.o \
./drivers/fsl_tpm.o \
./drivers/fsl_trng.o 

C_DEPS += \
./drivers/fsl_adc16.d \
./drivers/fsl_clock.d \
./drivers/fsl_common.d \
./drivers/fsl_dspi.d \
./drivers/fsl_dspi_freertos.d \
./drivers/fsl_flash.d \
./drivers/fsl_gpio.d \
./drivers/fsl_i2c.d \
./drivers/fsl_i2c_freertos.d \
./drivers/fsl_llwu.d \
./drivers/fsl_lptmr.d \
./drivers/fsl_lpuart.d \
./drivers/fsl_lpuart_freertos.d \
./drivers/fsl_ltc.d \
./drivers/fsl_pmc.d \
./drivers/fsl_rtc.d \
./drivers/fsl_smc.d \
./drivers/fsl_tpm.d \
./drivers/fsl_trng.d 


# Each subdirectory must supply rules for building sources it contributes
drivers/%.o: ../drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU C Compiler'
	arm-none-eabi-gcc -std=gnu99 -DCR_INTEGER_PRINTF -DDEBUG -DFSL_RTOS_FREE_RTOS -DFRDM_KW41Z -DFREEDOM -D__MCUXPRESSO -D__USE_CMSIS -DSDK_OS_FREE_RTOS -DCPU_MKW41Z512VHT4_cm0plus -DCPU_MKW41Z512VHT4 -D__REDLIB__ -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\source" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\drivers" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\profiles\device_info" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\OSAbstraction\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\LED\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\utilities" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\freertos" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\SerialManager\Source\SPI_Adapter" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\Shell\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\profiles\wireless_uart" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\Flash\Internal" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\source\common\gatt_db\macros" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\source\common\gatt_db" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\source\common" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\FunctionLib" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\DCDC\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\TimersManager\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\TimersManager\Source" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\common" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\MemManager\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\Lists" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\GPIO" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\Panic\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\Messaging\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\SerialManager\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\CMSIS" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\SerialManager\Source\I2C_Adapter" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\SecLib" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\board" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\ModuleInfo" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\XCVR\MKW41Z4" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\Keyboard\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\controller\interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\host\interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\host\config" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\RNG\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\SerialManager\Source\UART_Adapter" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\MWSCoexistence\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\hci_transport\interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\NVM\Interface" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\framework\NVM\Source" -I"D:\MCUXpressoIDE_workspace\frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test\bluetooth\profiles\battery" -O0 -fno-common -g -Wall -c  -ffunction-sections  -fdata-sections  -ffreestanding  -fno-builtin -imacros "D:/MCUXpressoIDE_workspace/frdmkw41z_wireless_examples_bluetooth_wireless_uart_freertos_Test/source/app_preinclude.h" -mcpu=cortex-m0plus -mthumb -D__REDLIB__ -specs=redlib.specs -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


