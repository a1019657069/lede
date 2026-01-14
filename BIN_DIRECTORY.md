# bin 目录详解

本文件描述仓库根目录下的 `bin/` 目录结构、常见子目录与如何定位构建产物（固件镜像与软件包）。

概述
- `bin/` 是 `make` 构建完成后输出的主要目录，包含各目标平台的镜像、固件与生成的包索引。

顶层结构（自动扫描结果）
- `targets/`：按目标平台/体系结构组织的固件与相关文件（示例子目录：`bcm27xx/`、`x86/`）。
- `packages/`：按架构组织的已编译 ipk 软件包（示例子目录：`arm_cortex-a7_neon-vfpv4/`、`x86_64/`）。

`bin/targets/` 说明
- 位置：`bin/targets/<platform>/<subtarget>/`（例如 `bin/targets/x86/` 或 `bin/targets/bcm27xx/`）。
- 常见内容：
  - `firmware-*`、`openwrt-*.bin`：设备固件镜像，用于刷机或通过厂商工具写入。
  - `sha256sums` / `sha256sums.asc`：校验文件，用于验证镜像完整性与签名。
  - `packages/`（可选）：该 target 特定的 package 清单/索引或附带的额外文件。
  - `profiles.json`：JSON 格式的设备/固件概要信息（由构建脚本生成，用于 UI 或发布说明）。
  - `version.buildinfo` / `feeds.buildinfo`：构建版本与 feeds 信息，用于追溯构建来源。

查找固件镜像的建议流程：
1. 进入对应平台目录，例如：

```bash
cd bin/targets/x86/
```

2. 列出可用文件并使用 `sha256sums` 或 `sha256sum` 验证镜像。示例：

```bash
ls -l
sha256sum -c sha256sums  # 在有 sha256sums 文件时
```

3. 若需要特定子目标或 profile（如带 sysupgrade 的镜像），请查看文件名中包含的关键字（如 `sysupgrade`, `factory`, `combined-squashfs`）。

`bin/packages/` 说明
- 位置：`bin/packages/<arch>/`（例如 `bin/packages/arm_cortex-a7_neon-vfpv4/`、`bin/packages/x86_64/`）。
- 常见内容：
  - `Packages` / `Packages.gz`：软件包索引，供 `opkg` 或 feeds 使用。
  - `.ipk` 文件：已编译的软件包，可手动安装或用于构建镜像的 package 目录。
  - `Packages.sig` / `Packages.asc`：索引的签名文件（若启用了签名）。

如何使用 `bin/packages` 中的软件包：
1. 将 `.ipk` 拷贝到设备上并使用 `opkg install <package>.ipk` 安装。
2. 在构建新的固件镜像或 SDK 时，可将这些包作为本地 feeds 或在构建配置中引用。

其他常见文件
- `profiles.json`（可能存在于 `bin/targets` 的子目录）：设备/映像的元数据索引。
- `config.buildinfo` / `version.buildinfo`：记录构建时的配置与版本信息，便于复现构建环境。

注意事项与最佳实践
- 在下载或分发镜像时，务必校验 `sha256sums` 与签名以确保文件未被篡改。
- 若在 Windows/WSL 环境中查看或复制文件，注意大小写敏感与路径中空格可能导致构建/校验问题。
- 若需要自动化提取最新镜像，优先按 `version.buildinfo` 或目录时间戳排序。

示例快速命令

列出 x86 平台镜像并验证校验：

```bash
ls -lah bin/targets/x86/
cd bin/targets/x86/
sha256sum -c sha256sums
```

列出并安装一个 ipk 包（假设设备已联机且具备 opkg）：

```bash
scp bin/packages/x86_64/xxx.ipk root@device:/tmp/
ssh root@device 'opkg install /tmp/xxx.ipk'
```

结语
- 本文根据当前仓库 `bin/` 顶层结构自动生成。如需更细粒度说明（例如针对某个 `targets/<name>` 的文件样例），请告诉我目标平台名称，我会展开列出并补充示例文件说明。