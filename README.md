# homebrew-tap

个人 Homebrew Tap，用于收录日常需要安装的软件。

## 安装

先添加 Tap：

```bash
brew tap lipanre/tap
```

### Yaak

```bash
brew install --cask lipanre/tap/yaak
```

- 项目：[lipanre/yaak](https://github.com/lipanre/yaak)
- 官网：[yaak.app](https://yaak.app/)
- 类型：macOS 桌面应用（Apple Silicon / Intel）
- 当前构建：[`main-build-2`](https://github.com/lipanre/yaak/releases/tag/main-build-2)

如果之前已经从 Homebrew 官方 Cask 安装过 `yaak`，切换前先卸载官方版本：

```bash
brew uninstall --cask yaak
brew install --cask lipanre/tap/yaak
```

该构建由项目的 `main` 分支自动生成，使用 ad-hoc 签名且未经过 Apple 公证。安装 Cask
时会自动移除 quarantine 属性，避免 macOS 将其误报为“已损坏”。

### capcap

```bash
brew install --cask lipanre/tap/capcap
```

- 项目：[lipanre/capcap](https://github.com/lipanre/capcap)
- 官网：[capcap.skyrin.fun](https://capcap.skyrin.fun/)
- 类型：macOS 菜单栏截图工具（Universal）
- 系统要求：macOS 14+
- 当前版本：[`v1.8.0`](https://github.com/lipanre/capcap/releases/tag/release-v1.8.0)

该构建使用 ad-hoc 签名且未经过 Apple 公证，安装 Cask 时会自动移除 quarantine 属性。
首次截图时，请按提示授予“屏幕录制”和“辅助功能”权限。

### Tiny RDM

```bash
brew install --cask lipanre/tap/tiny-rdm
```

- 项目：[tiny-craft/tiny-rdm](https://github.com/tiny-craft/tiny-rdm)
- 官网：[tinyrdm.com](https://tinyrdm.com/)
- 类型：Redis 桌面管理工具（Apple Silicon / Intel）
- 系统要求：macOS 11+
- 当前版本：[`v1.2.7`](https://github.com/tiny-craft/tiny-rdm/releases/tag/v1.2.7)

该构建使用 ad-hoc 签名且未经过 Apple 公证，安装 Cask 时会自动移除 quarantine 属性。

### Purge

```bash
brew install --cask lipanre/tap/purge
```

- 项目：[jithin-sabu/purge-app](https://github.com/jithin-sabu/purge-app)
- 官网：[purgemac.com](https://purgemac.com/)
- 类型：macOS 清理工具（Universal）
- 系统要求：macOS 13+
- 当前版本：[`v1.12.0`](https://github.com/jithin-sabu/purge-app/releases/tag/v1.12.0)

Purge 会将清理项目默认移入“废纸篓”，并支持通过 Sparkle 自动更新。

## 更新

```bash
brew upgrade --cask lipanre/tap/yaak
brew upgrade --cask lipanre/tap/capcap
brew upgrade --cask lipanre/tap/tiny-rdm
brew upgrade --cask lipanre/tap/purge
```
