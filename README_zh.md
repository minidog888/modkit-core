# Core Module

这是系统核心模块，始终加载，不能被禁用。

## 功能

### 核心命令
- `make help`：显示帮助信息
- `make build`：将项目打包为单个可执行脚本
- `make create name=<module-name>`：创建新模块
- `make create-project name=<project-name>`：从包创建新项目
- `make install`：初始化并安装所有依赖
- `make list`：列出所有已安装模块
- `make info name=<module>`：显示模块信息
- `make enable name=<module>`：启用模块
- `make disable name=<module>`：禁用模块
- `make mod-install name=<module> source=<url>`：从源码安装模块

### 模块管理
- `make dependencies`：启用 mod.json 中的所有依赖
- `make dev-dependencies`：启用开发依赖
- `make install-deps`：从仓库安装依赖
- `make publish name=<module>`：发布模块配置

## 目录结构

```
modkit-core/
├── bin/                 # 可执行脚本
│   ├── help             # 帮助显示脚本
│   └── module-help      # 模块帮助脚本
├── config/              # 模块配置
│   └── core.ini         # 核心模块配置
├── i18n/                # 国际化文件
│   ├── en               # 英文语言字符串
│   └── zh               # 中文语言字符串
├── lib/                 # 库文件
│   ├── colors.lib       # 颜色和日志工具
│   ├── config.lib       # 配置加载工具
│   ├── core.lib         # 核心工具
│   ├── i18n.lib         # 国际化工具
│   ├── json.lib         # JSON 解析工具
│   ├── makefile-helpers.mk  # Makefile 辅助函数
│   └── makefile.lib     # Makefile 工具
├── LICENSE              # 许可证文件
├── mod.json             # 模块元数据
├── module.mk            # Makefile 模块定义
├── README.md            # 模块文档（英文）
└── README_zh.md        # 模块文档（中文）
```

## 快速开始

### 显示帮助

```bash
make help
```

### 创建新模块

```bash
make create name=my-module
```

### 管理模块

```bash
# 列出所有模块
make list

# 启用模块
make enable name=my-module

# 查看模块信息
make info name=my-module
```
