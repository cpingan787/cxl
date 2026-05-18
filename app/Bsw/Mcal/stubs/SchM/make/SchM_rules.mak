#######################################################################
# REGISTRY
#

LIBRARIES_TO_BUILD +=

ifeq ($(MODULE_NAME), fr)
CC_FILES_TO_BUILD += $(RTE_CORE_PATH)\src\SchM_$(MODULE_NAME)_59_Renesas.c
else
CC_FILES_TO_BUILD += $(RTE_CORE_PATH)\src\SchM_$(MODULE_NAME).c 
endif

CPP_FILES_TO_BUILD +=
ASM_FILES_TO_BUILD +=
LIBRARIES_LINK_ONLY +=
OBJECTS_LINK_ONLY +=
GENERATED_SOURCE_FILES +=

MAKE_CLEAN_RULES +=
MAKE_GENERATE_RULES +=
MAKE_DEBUG_RULES += debug_rte_makefile
MAKE_CONFIG_RULES +=


################################################################################
# Command to print debug information                                          #
################################################################################
debug_det_makefile:
    @echo DET_CORE_PATH = $(DET_CORE_PATH)


################################################################################
