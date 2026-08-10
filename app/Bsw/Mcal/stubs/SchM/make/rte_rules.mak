#######################################################################
# REGISTRY
#

LIBRARIES_TO_BUILD +=
ifeq ($(MODULE_NAME), wdg)
ifeq ($(WDG_DRIVER_INSTANCE), DRIVERA)
CC_FILES_TO_BUILD += $(RTE_CORE_PATH)\src\SchM_$(MODULE_NAME)_59_DRIVERA.c
else ifeq ($(WDG_DRIVER_INSTANCE), DRIVERB)
CC_FILES_TO_BUILD += $(RTE_CORE_PATH)\src\SchM_$(MODULE_NAME)_59_DRIVERB.c
else ifeq ($(WDG_DRIVER_INSTANCE), DRIVERC)
CC_FILES_TO_BUILD += $(RTE_CORE_PATH)\src\SchM_$(MODULE_NAME)_59_DRIVERC.c
else ifeq ($(WDG_DRIVER_INSTANCE), DRIVERAB)
CC_FILES_TO_BUILD += $(RTE_CORE_PATH)\src\SchM_$(MODULE_NAME)_59_DRIVERA.c
CC_FILES_TO_BUILD += $(RTE_CORE_PATH)\src\SchM_$(MODULE_NAME)_59_DRIVERB.c
else ifeq ($(WDG_DRIVER_INSTANCE), DRIVERABC)
CC_FILES_TO_BUILD += $(RTE_CORE_PATH)\src\SchM_$(MODULE_NAME)_59_DRIVERA.c
CC_FILES_TO_BUILD += $(RTE_CORE_PATH)\src\SchM_$(MODULE_NAME)_59_DRIVERB.c
CC_FILES_TO_BUILD += $(RTE_CORE_PATH)\src\SchM_$(MODULE_NAME)_59_DRIVERC.c
endif
else ifeq ($(MODULE_NAME), canv2)
CC_FILES_TO_BUILD += $(RTE_CORE_PATH)\src\SchM_Can.c
else ifeq ($(MODULE_NAME), fr)
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
debug_rte_makefile:
    @echo RTE_CORE_PATH = $(RTE_CORE_PATH)


################################################################################
