# CoreModule

This is the system core module, always loaded and cannot be disabled.

## Features

### Core Commands
- `make help`：Display help information
- `make build`：Package project into a single executable script
- `make create name=<module-name>`：Create a new module
- `make create-project name=<project-name>`：Create a new project from package
- `make install`：Initialize and install all dependencies
- `make list`：List all installed modules
- `make info name=<module>`：Show module information
- `make enable name=<module>`：Enable a module
- `make disable name=<module>`：Disable a module
- `make mod-install name=<module> source=<url>`：Install a module from source

### Module Management
- `make dependencies`：Enable all dependencies from mod.json
- `make dev-dependencies`：Enable development dependencies
- `make install-deps`：Install dependencies from registry
- `make publish name=<module>`：Publish module configuration

## Directory Structure

```
modkit-core/
├── bin/                 # Executable scripts
│   ├── help             # Help display script
│   └── module-help      # Module help script
├── config/              # Module configuration
│   └── core.ini         # Core module configuration
├── i18n/                # Internationalization files
│   ├── en               # English language strings
│   └── zh               # Chinese language strings
├── lib/                 # Library files
│   ├── colors.lib       # Color and logging utilities
│   ├── config.lib       # Configuration loading utilities
│   ├── core.lib         # Core utilities
│   ├── i18n.lib         # Internationalization utilities
│   ├── json.lib         # JSON parsing utilities
│   ├── makefile-helpers.mk  # Makefile helper functions
│   └── makefile.lib     # Makefile utilities
├── LICENSE              # License file
├── mod.json             # Module metadata
├── module.mk            # Makefile module definition
├── README.md            # Module documentation (English)
└── README_zh.md        # Module documentation (Chinese)
```

## Quick Start

### Display Help

```bash
make help
```

### Create a New Module

```bash
make create name=my-module
```

### Manage Modules

```bash
# List all modules
make list

# Enable a module
make enable name=my-module

# View module information
make info name=my-module
```
