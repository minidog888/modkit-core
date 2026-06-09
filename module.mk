# ============================================
# Core Module - Always loaded (shared utilities)
# ============================================

CORE_MODULE_PATH := $(MODULES_DIR)/core

# 将 PROJECT_ROOT 导出为环境变量，供脚本使用
export PROJECT_ROOT

# Include helper functions
include $(CORE_MODULE_PATH)/lib/makefile-helpers.mk

$(call generate_phony_auto)

help: ## Display help information
	@PROJECT_ROOT="$(PROJECT_ROOT)" $(CORE_MODULE_PATH)/bin/help

help-core: ## Show core module help
	$(call print_help_header,core)
	$(call print_help_cmd,help,Display this help message)
	$(call print_help_footer)
