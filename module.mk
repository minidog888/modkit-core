# ============================================
# Core Module - Always loaded (shared utilities)
# ============================================

# Calculate directories from this file's location
# This file is at: $(PROJECT_ROOT)/modules/core/module.mk
CURRENT_MAKEFILE := $(lastword $(MAKEFILE_LIST))
CURRENT_DIR := $(dir $(abspath $(CURRENT_MAKEFILE)))
# PROJECT_ROOT is two levels up from core module
PROJECT_ROOT := $(CURRENT_DIR:$(CURDIR)/modules/core/%=%)
PROJECT_ROOT := $(patsubst %/modules/core,%,$(PROJECT_ROOT))
PROJECT_ROOT := $(if $(PROJECT_ROOT),$(PROJECT_ROOT),$(CURDIR))

# Define MODULES_DIR and ORIG_PWD
MODULES_DIR := $(PROJECT_ROOT)/modules
ORIG_PWD := $(shell pwd)

# Export for scripts
export PROJECT_ROOT MODULES_DIR ORIG_PWD

# Load module configuration (defines ENABLE_MODULES)
MODULES_CONFIG ?= $(PROJECT_ROOT)/modules.mk
ifneq ("$(wildcard $(MODULES_CONFIG))","")
	include $(MODULES_CONFIG)
endif

# Core module path (after we know MODULES_DIR)
CORE_MODULE_PATH := $(MODULES_DIR)/core

# Include helper functions (colors, helpers)
include $(CORE_MODULE_PATH)/lib/makefile-helpers.mk

$(call generate_phony_auto)

# Help is controlled by core module - delegates to bin/help script
help: ## Display help information
	@$(CORE_MODULE_PATH)/bin/help

# Default goal
.DEFAULT_GOAL := help

# ============================================
# Module Loading
# Load project module.mk and other modules
# ============================================

# Load project module.mk (main tool commands)
-include $(PROJECT_ROOT)/module.mk

# Load other modules (from ENABLE_MODULES, excluding core)
$(foreach m,$(filter-out core,$(ENABLE_MODULES)),$(eval include $(MODULES_DIR)/$m/module.mk))
