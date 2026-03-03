#######################################################################
# REGISTRY
########################################################################
# Get the current working directory into variable "STUBS"

LIBRARIES_TO_BUILD +=

CC_FILES_TO_BUILD += $(CANIF_CORE_PATH)\src\CanIf_Cbk.c

CPP_FILES_TO_BUILD	+=
ASM_FILES_TO_BUILD	+=

LIBRARIES_LINK_ONLY	+=

OBJECTS_LINK_ONLY +=


GENERATED_SOURCE_FILES +=

MAKE_CLEAN_RULES +=
MAKE_GENERATE_RULES +=

MAKE_DEBUG_RULES += debug_CanIf_makefile
MAKE_CONFIG_RULES +=


################################################################################
# Command to print debug information                                          #
################################################################################
debug_canif_makefile:

	@echo CANIF_CORE_PATH = $(CANIF_CORE_PATH)
