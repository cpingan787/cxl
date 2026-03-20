#######################################################################
# REGISTRY
#

LIBRARIES_TO_BUILD +=

CC_FILES_TO_BUILD += $(RTE_CORE_PATH)\src\SchM_Wdg_59_DriverB.c 
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
debug_rte_makefile:
    @echo RTE_CORE_PATH = $(RTE_CORE_PATH)


################################################################################
