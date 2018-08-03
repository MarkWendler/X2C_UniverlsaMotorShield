#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/X2C_UNIMC_SHIELD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/X2C_UNIMC_SHIELD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/pwm.c mcc_generated_files/interrupt_manager.c mcc_generated_files/uart1.c mcc_generated_files/pin_manager.c mcc_generated_files/adc1.c mcc_generated_files/mcc.c mcc_generated_files/X2CCode/X2CMain.c mcc_generated_files/X2CCode/X2CComm.c mcc_generated_files/X2CCode/X2CUtils.c mcc_generated_files/X2CCode/Controller/Common/Atan_Data.c mcc_generated_files/X2CCode/Controller/Common/CommonFcts.c mcc_generated_files/X2CCode/Controller/Common/Exp_Data.c mcc_generated_files/X2CCode/Controller/Common/Sin_Data.c mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.c mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.c mcc_generated_files/X2CCode/Controller/Common/TableStruct.c mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.c mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.c mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.c mcc_generated_files/X2CCode/Controller/Services/Services.c mcc_generated_files/X2CCode/X2C.c mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.c mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.c mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.c main.c hardwaretweaks.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/pwm.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o ${OBJECTDIR}/main.o ${OBJECTDIR}/hardwaretweaks.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/pwm.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o.d ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/hardwaretweaks.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/pwm.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o ${OBJECTDIR}/main.o ${OBJECTDIR}/hardwaretweaks.o

# Source Files
SOURCEFILES=mcc_generated_files/pwm.c mcc_generated_files/interrupt_manager.c mcc_generated_files/uart1.c mcc_generated_files/pin_manager.c mcc_generated_files/adc1.c mcc_generated_files/mcc.c mcc_generated_files/X2CCode/X2CMain.c mcc_generated_files/X2CCode/X2CComm.c mcc_generated_files/X2CCode/X2CUtils.c mcc_generated_files/X2CCode/Controller/Common/Atan_Data.c mcc_generated_files/X2CCode/Controller/Common/CommonFcts.c mcc_generated_files/X2CCode/Controller/Common/Exp_Data.c mcc_generated_files/X2CCode/Controller/Common/Sin_Data.c mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.c mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.c mcc_generated_files/X2CCode/Controller/Common/TableStruct.c mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.c mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.c mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.c mcc_generated_files/X2CCode/Controller/Services/Services.c mcc_generated_files/X2CCode/X2C.c mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.c mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.c mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.c main.c hardwaretweaks.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/X2C_UNIMC_SHIELD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33EP256MC502
MP_LINKER_FILE_OPTION=,--script=p33EP256MC502.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/pwm.o: mcc_generated_files/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pwm.c  -o ${OBJECTDIR}/mcc_generated_files/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/pwm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/uart1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/adc1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/mcc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o: mcc_generated_files/X2CCode/X2CMain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/X2CMain.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o: mcc_generated_files/X2CCode/X2CComm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/X2CComm.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o: mcc_generated_files/X2CCode/X2CUtils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/X2CUtils.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o: mcc_generated_files/X2CCode/Controller/Common/Atan_Data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/Atan_Data.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o: mcc_generated_files/X2CCode/Controller/Common/CommonFcts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/CommonFcts.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o: mcc_generated_files/X2CCode/Controller/Common/Exp_Data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/Exp_Data.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o: mcc_generated_files/X2CCode/Controller/Common/Sin_Data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/Sin_Data.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o: mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o: mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o: mcc_generated_files/X2CCode/Controller/Common/TableStruct.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/TableStruct.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o: mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o: mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o: mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o: mcc_generated_files/X2CCode/Controller/Services/Services.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Services/Services.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o: mcc_generated_files/X2CCode/X2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/X2C.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o: mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o: mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o: mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hardwaretweaks.o: hardwaretweaks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hardwaretweaks.o.d 
	@${RM} ${OBJECTDIR}/hardwaretweaks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hardwaretweaks.c  -o ${OBJECTDIR}/hardwaretweaks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/hardwaretweaks.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -mno-eds-warn  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/hardwaretweaks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/mcc_generated_files/pwm.o: mcc_generated_files/pwm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pwm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pwm.c  -o ${OBJECTDIR}/mcc_generated_files/pwm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/pwm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/pwm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/interrupt_manager.c  -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/uart1.c  -o ${OBJECTDIR}/mcc_generated_files/uart1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/uart1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/pin_manager.c  -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/adc1.c  -o ${OBJECTDIR}/mcc_generated_files/adc1.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/adc1.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/mcc.c  -o ${OBJECTDIR}/mcc_generated_files/mcc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/mcc.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o: mcc_generated_files/X2CCode/X2CMain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/X2CMain.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/X2CMain.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o: mcc_generated_files/X2CCode/X2CComm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/X2CComm.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/X2CComm.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o: mcc_generated_files/X2CCode/X2CUtils.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/X2CUtils.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/X2CUtils.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o: mcc_generated_files/X2CCode/Controller/Common/Atan_Data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/Atan_Data.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Atan_Data.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o: mcc_generated_files/X2CCode/Controller/Common/CommonFcts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/CommonFcts.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/CommonFcts.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o: mcc_generated_files/X2CCode/Controller/Common/Exp_Data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/Exp_Data.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Exp_Data.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o: mcc_generated_files/X2CCode/Controller/Common/Sin_Data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/Sin_Data.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin_Data.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o: mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sin2_Data.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o: mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/Sqrt_Data.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o: mcc_generated_files/X2CCode/Controller/Common/TableStruct.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Common/TableStruct.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Common/TableStruct.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o: mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Driver/Serial/SerialGeneric.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o: mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Protocol/LNet/LNet.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o: mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/BlockServicesX2C.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o: mcc_generated_files/X2CCode/Controller/Services/Services.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Controller/Services/Services.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Controller/Services/Services.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o: mcc_generated_files/X2CCode/X2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/X2C.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/X2C.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o: mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Scope_Main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o: mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Sin3Gen_FiP16.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o: mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.c  -o ${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/X2CCode/Library/General/Controller/src/Constant_FiP16.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  main.c  -o ${OBJECTDIR}/main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/main.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/hardwaretweaks.o: hardwaretweaks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hardwaretweaks.o.d 
	@${RM} ${OBJECTDIR}/hardwaretweaks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  hardwaretweaks.c  -o ${OBJECTDIR}/hardwaretweaks.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/hardwaretweaks.o.d"      -mno-eds-warn  -g -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -O0 -I"mcc_generated_files/X2CCode/Library/Control/Controller/inc" -I"mcc_generated_files/X2CCode/Library/General/Controller/inc" -I"mcc_generated_files/X2CCode/Library/Math/Controller/inc" -I"mcc_generated_files/X2CCode/Library/MCHP/Controller/inc" -I"mcc_generated_files/X2CCode/Controller/Common" -I"mcc_generated_files/X2CCode/Controller/Driver/Serial" -I"mcc_generated_files/X2CCode/Controller/Protocol/LNet" -I"mcc_generated_files/X2CCode/Controller/Services" -I"mcc_generated_files/X2CCode" -I"mcc_generated_files" -I"C:/Users/M18034/MPLABXProjects/X2C_UNIMC_SHIELD.X" -D__GENERIC_MICROCHIP_DSPIC__ -DSCOPE_SIZE=10000 -msmart-io=1 -Wall -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/hardwaretweaks.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/X2C_UNIMC_SHIELD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/X2C_UNIMC_SHIELD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x1000:0x101B -mreserve=data@0x101C:0x101D -mreserve=data@0x101E:0x101F -mreserve=data@0x1020:0x1021 -mreserve=data@0x1022:0x1023 -mreserve=data@0x1024:0x1027 -mreserve=data@0x1028:0x104F   -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library=dsPIC33E_Math,--library=dsPIC33E_MCHP,--library=dsPIC33E_Control,--library-path="mcc_generated_files/X2CCode/Library/Math/Controller/lib",--library-path="mcc_generated_files/X2CCode/Library/MCHP/Controller/lib",--library-path="mcc_generated_files/X2CCode/Library/Control/Controller/lib",--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/X2C_UNIMC_SHIELD.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/X2C_UNIMC_SHIELD.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -legacy-libc  $(COMPARISON_BUILD)  -Wl,--local-stack,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library=dsPIC33E_Math,--library=dsPIC33E_MCHP,--library=dsPIC33E_Control,--library-path="mcc_generated_files/X2CCode/Library/Math/Controller/lib",--library-path="mcc_generated_files/X2CCode/Library/MCHP/Controller/lib",--library-path="mcc_generated_files/X2CCode/Library/Control/Controller/lib",--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/X2C_UNIMC_SHIELD.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
