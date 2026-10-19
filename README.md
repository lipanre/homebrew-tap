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

## 更新

```bash
brew upgrade --cask lipanre/tap/yaak
brew upgrade --cask lipanre/tap/capcap
```
