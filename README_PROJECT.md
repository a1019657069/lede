# 项目说明（概要）

这是基于 LEDE/OpenWrt 的固件源码仓库（含编译系统、feeds、工具链与各平台目标）。本说明基于仓库顶层目录结构自动生成，提供快速上手与目录导航。

**仓库位置**: 根目录

**概览**
- 本仓库为 OpenWrt/LEDE 源码树与构建系统，包含 package、toolchain、feeds、targets、构建脚本与输出目录。

**主要目录与说明**
- [bin/](bin/): 编译产物，固件镜像输出在 `bin/targets/*`。
- [build/](build/): CMake/构建中间产物（本仓库的局部构建目录）。
- [build_dir/](build_dir/): 各 package 与 target 的构建工作目录。
- [config/](config/): 配置片段与内核相关配置模板。
- [dl/](dl/): 下载缓存，外部源码与依赖的存放目录。
- [feeds/](feeds/): feeds 源与索引（包含 luci/packages/routing/telephony 等）。
- [include/](include/): 构建系统包含的 make 片段与脚本（例如 host-build.mk、package.mk 等）。
- [package/](package/): 仓库自带的 packages 源码目录。
- [scripts/](scripts/): 各类辅助脚本（feeds 管理、版本信息、工具脚本等）。
- [staging_dir/](staging_dir/): 交叉编译暂存与主机工具链输出目录。
- [target/](target/): 各目标平台的 make 片段与配置。
- [toolchain/](toolchain/): toolchain 构建规则与脚本。
- [tools/](tools/): 构建所需主机工具及其 Makefile。
- [tmp/](tmp/): 临时文件目录。

**关键文件**
- [README.md](README.md): 仓库使用说明与编译示例（包含依赖安装与平台注意事项）。
- [Makefile](Makefile): 构建系统入口，定义了 `world`、`prepare`、`clean` 等常用目标。
- [feeds.conf.default](feeds.conf.default): 默认 feeds 列表。
- [rules.mk](rules.mk): package 构建规则。
- [include/host-build.mk](include/host-build.mk): 主机端构建相关配置（当前正在编辑的文件）。

**快速开始（常用命令）**
1. 安装主机依赖（示例以 Debian/Ubuntu 为准，详情见 README.md）

2. 获取源码并进入仓库：

```bash
git clone <repo-url> .
cd <repo-root>
```

3. 更新并安装 feeds：

```bash
./scripts/feeds update -a
./scripts/feeds install -a
```

4. 配置：

```bash
make menuconfig
```

5. 下载依赖包（可选并行）：

```bash
make download -j8
```

6. 构建：

```bash
make V=s -j$(nproc)
```

7. 构建产物位于 `bin/targets/` 下。

**构建与定制提示**
- 避免在包含空格或大小写不敏感的文件系统（例如默认 NTFS）上编译。
- 若使用 WSL，请注意 PATH 与大小写敏感问题（参见 README.md 中的 WSL 说明）。
- 添加或自定义 package：将包放入 `package/` 或创建自有 feeds 并通过 `feeds` 管理。
- 常见清理命令：`make clean`、`make dirclean`、`make targetclean`。

**进阶**
- 若需交叉构建或自定义 toolchain，请查看 [toolchain/](toolchain/) 与 [staging_dir/](staging_dir/) 的内容。
- 自动化构建可通过 CI 脚本或 `make V=s -j1` 在干净环境中复现。

**贡献与联系方式**
- 欢迎提交 issue、PR 或在项目讨论区交流。请在提交前阅读仓库原始 README 中的贡献、许可与版权说明。

---
（此文件由仓库目录自动生成，若需更详细的定制说明或添加示例配置，请告知我将补充。）
