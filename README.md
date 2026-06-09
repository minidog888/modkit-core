# CoreModule

This is the system core module, always loaded and cannot be disabled.

## Feature

### CoreCommand
- `make install`：Initializeand install all dependencies
- `make help`：ShowHelp information

### Module management commands
- `make mod@list`：List all installed modules
- `make mod@info name=<module>`：Show module details
- `make mod@add name=<module> [source=<url>]`：AddModule
- `make mod@remove name=<module>`：RemoveModule
- `make mod@enable name=<module>`：EnableModule
- `make mod@disable name=<module>`：DisableModule
- `make mod@create name=<module> [parent=<parent>]`：Create new module

## Directory structure

```
core/
├── module.yaml          # Module metadata
├── module.mk            # Makefile module definition
├── bin/                 # Executable scripts
│   ├── init            # Initialize script
│   ├── install         # Install script
│   ├── help            # Help script
│   └── mod             # Module manager script
├── lib/                 # Library files
├── i18n/                # Internationalization files
│   ├── zh              # Chinese language strings
│   └── en              # English language strings
├── config/              # Module configuration
│   └── core.yaml       # Core module configuration
└── README.md            # Module documentation
```

## usesExample

### InitializeSystem

```bash
make init
```

### Create new module

```bash
# Create top-level module
make mod@create name=my-module

# Create submodule
make mod@create name=my-sub-module parent=my-module
```

### Manage modules

```bash
# List all modules
make mod@list

# EnableModule
make mod@enable name=my-module

# View module information
make mod@info name=my-module

# Install（containsDependencyInstall）
make install
```
