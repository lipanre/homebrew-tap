# homebrew-tap

个人 Homebrew Tap，用于收录日常需要安装的软件。

## 安装

```bash
brew tap lipanre/tap
brew install --cask lipanre/tap/yaak
```

更新已安装的 Cask：

```bash
brew upgrade --cask lipanre/tap/yaak
```

如果之前已经从 Homebrew 官方 Cask 安装过 `yaak`，安装本 Tap 的构建前先卸载官方版本：

```bash
brew uninstall --cask yaak
brew install --cask lipanre/tap/yaak
```

## 已收录软件

### Yaak

- 项目：[lipanre/yaak](https://github.com/lipanre/yaak)
- 官网：[yaak.app](https://yaak.app/)
- 类型：macOS 桌面应用（Apple Silicon / Intel）
- 当前构建：[`main-build-2`](https://github.com/lipanre/yaak/releases/tag/main-build-2)

该构建由项目的 `main` 分支自动生成，未使用 Apple 开发者证书签名或公证。如果 macOS
阻止应用打开，请在“系统设置 → 隐私与安全性”中允许运行。
