# ============================================
# Makefile Helper Functions
# ============================================

# Define color codes
define COLOR_TITLE
\033[1;33m
endef

define COLOR_CMD
\033[0;32m
endef

define COLOR_RESET
\033[0m
endef

# ============================================
# Print module help header
# Usage: $(call print_help_header,module_name)
# ============================================
define print_help_header
	@echo ""
	@printf "$(COLOR_TITLE)%s module commands:$(COLOR_RESET)\n" "$1"
endef

# ============================================
# Print a single command in help
# Usage: $(call print_help_cmd,command,description)
# ============================================
define print_help_cmd
	@printf "  $(COLOR_CMD)%-25s$(COLOR_RESET) %s\n" "$1" "$2"
endef

# ============================================
# Print help footer (empty line)
# Usage: $(call print_help_footer)
# ============================================
define print_help_footer
	@echo ""
endef

# ============================================
# Generate PHONY targets
# Usage: $(call generate_phony,module_name,cmd1 cmd2 cmd3)
# Example: $(call generate_phony,test,test@do test@run)
# ============================================
define generate_phony
.PHONY: help-$1 $2
endef

# ============================================
# Auto-generate PHONY targets from current file
# Usage: $(call generate_phony_auto)
# Scans current Makefile and extracts all target names
# ============================================
define generate_phony_auto
.PHONY: $(shell grep -E '^[a-zA-Z0-9_-]+(@[a-zA-Z0-9_-]+)?:.*##' $(lastword $(MAKEFILE_LIST)) | sed 's/:.*//')
endef
