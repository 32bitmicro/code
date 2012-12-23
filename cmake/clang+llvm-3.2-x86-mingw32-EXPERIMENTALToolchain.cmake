# LLVM+Clang 3.2 - with MingW
# http://www.32bitmicro.com/llvm-clang

# force cross compiler
include(CMakeForceCompiler)

# set variables based on your system
set(MINGW_ROOT "c:/mingw")
set(GCC_PREFIX "mingw32-")
set(GCC_VER "4.6.2")
set(LLVM_ROOT "c:/mingw/clang+llvm-3.2-x86-mingw32-EXPERIMENTAL/")

set(CMAKE_ASM_COMPILER "${MINGW_ROOT}/bin/${GCC_PREFIX}gcc.exe")
set(CMAKE_C_COMPILER   "${LLVM_ROOT}/bin/${LLVM_BUILD}/clang.exe")
set(CMAKE_CXX_COMPILER "${LLVM_ROOT}/bin/${LLVM_BUILD}/clang++.exe")

# tools
set(CMAKE_NM "${MINGW_ROOT}/bin/${GCC_PREFIX}nm.exe")
set(CMAKE_LINKER "${MINGW_ROOT}/bin/${GCC_PREFIX}ld.exe")
set(CMAKE_OBJCOPY "${MINGW_ROOT}/bin/${GCC_PREFIX}objcopy.exe")
set(CMAKE_OBJDUMP "${MINGW_ROOT}/bin/${GCC_PREFIX}objdump.exe")
set(CMAKE_RANLIB "${MINGW_ROOT}/bin/${GCC_PREFIX}ranlib.exe")
set(CMAKE_STRIP "${MINGW_ROOT}/bin/${GCC_PREFIX}strip.exe")

# we cheat a bit to get things going
set(CMAKE_ASM_COMPILER_WORKS TRUE)
set(CMAKE_C_COMPILER_WORKS TRUE)
set(CMAKE_CXX_COMPILER_WORKS TRUE)
