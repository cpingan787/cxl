###############################################################################
# REGISTRY
#

LIBRARIES_TO_BUILD +=

CC_FILES_TO_BUILD += \
    $(ECUM_CORE_PATH)\src\EcuM.c

CPP_FILES_TO_BUILD  +=
ASM_FILES_TO_BUILD  +=

LIBRARIES_LINK_ONLY +=

OBJECTS_LINK_ONLY +=


GENERATED_SOURCE_FILES +=

MAKE_CLEAN_RULES +=
MAKE_GENERATE_RULES +=

MAKE_DEBUG_RULES += debug_ecum_makefile
MAKE_CONFIG_RULES +=


###############################################################################
# Command to print debug information                                          #
###############################################################################
debug_ecum_makefile:
    @echo ECUM_CORE_PATH = $(ECUM_CORE_PATH)

