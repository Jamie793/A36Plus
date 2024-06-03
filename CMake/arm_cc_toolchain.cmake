
set(CMAKE_SYSTEM_NAME Generic)

set(CMAKE_SYSTEM_PROCESSOR ARM)

set(TOOLCHAIN_PREFIX arm-none-eabi-)  

set(CMAKE_C_COMPILER ${TOOLCHAIN_PREFIX}gcc)

set(CMAKE_ASM_COMPILER ${TOOLCHAIN_PREFIX}gcc)

set(CMAKE_LINKER ${TOOLCHAIN_PREFIX}ld)

set(CMAKE_CXX_COMPILER ${TOOLCHAIN_PREFIX}g++)

set(CMAKE_AR ${TOOLCHAIN_PREFIX}gcc-ar)

set(CMAKE_NM ${TOOLCHAIN_PREFIX}nm)

set(CMAKE_OBJCOPY ${TOOLCHAIN_PREFIX}objcpy)

set(CMAKE_OBJDUMP ${TOOLCHAIN_PREFIX}objdump)

set(CMAKE_STRIP ${TOOLCHAIN_PREFIX}strip)

set(CMAKE_RANLIB ${TOOLCHAIN_PREFIX}ranlib)

set(CMAKE_SIZE ${TOOLCHAIN_PREFIX}size)

set(CMAKE_C_FLAGS  "-mthumb --specs=nosys.specs -mcpu=cortex-m4 -mfloat-abi=soft -fno-builtin -fno-strict-aliasing -fdata-sections -fms-extensions -ffunction-sections -Os" CACHE INTERNAL "C Compiler options")

set(CMAKE_ASM_FLAGS "-mcpu=cortex-m4" CACHE INTERNAL "ASM Compiler options")

set(CMAKE_EXE_LINKER_FLAGS_INIT "-mthumb -mcpu=cortex-m4 -mfloat-abi=soft -Wl,--gc-sections -flto --specs=nano.specs -T ${CMAKE_CURRENT_SOURCE_DIR}/gd32f3x0.ld")


message(STATUS "gcc toolchain is used")