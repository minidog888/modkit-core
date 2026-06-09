# Core Module

这是系统核心模块，始终加载，不能被禁用。

## 功能

### 核心命令
- `make install`：初始化并安装所有依赖
- `make help`：显示帮助信息

### 模块管理命令
- `make mod@list`：列出所有已安装模块
- `make mod@info name=<module>`：显示模块详细信息
- `make mod@add name=<module> [source=<url>]`：添加模块
- `make mod@remove name=<module>`：移除模块
- `make mod@enable name=<module>`：启用模块
- `make mod@disable name=<module>`：禁用模块
- `make mod@create name=<module> [parent=<parent>]`：创建新模块

## 目录结构

```
core/
├── module.yaml          # 模块元数据
├── module.mk            # Makefile 模块定义
├── bin/                 # 可执行脚本
│   ├── init            # 初始化脚本
│   ├── install         # 安装脚本
│   ├── help            # 帮助脚本
│   └── mod             # 模块管理器脚本
├── lib/                 # 库文件
├── i18n/                # 国际化文件
│   ├── zh              # 中文语言字符串
│   └── en              # 英文语言字符串
├── config/              # 模块配置
│   └── core.yaml       # 核心模块配置
└── README.md            # 模块文档
```

## 使用示例

### 创建顶级模块

```bash
make mod@create name=my-module
```

### 创建子模块

```bash
make mod@create name=my-sub-module parent=my-module
```

### 管理模块

```bash
# 列出所有模块
make mod@list

# 查看模块信息
make mod@info name=my-module

# 启用/禁用模块
make mod@enable name=my-module
make mod@disable name=my-module
```
