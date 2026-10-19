cask "capcap" do
  version "1.8.0"
  sha256 "c95185e7443e48af00762334d565ddacab116cdf33c03216ec866d6763be1d7e"

  url "https://github.com/lipanre/capcap/releases/download/release-v#{version}/capcap-#{version}-macos.dmg"
  name "capcap"
  desc "Menu bar screenshot and annotation tool"
  homepage "https://capcap.skyrin.fun/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "capcap.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/capcap.app"],
        must_succeed: false,
        print_stderr: false
  end

  uninstall quit: "cn.skyrin.capcap"

  zap trash: [
    "~/Library/Application Support/capcap",
    "~/Library/Caches/cn.skyrin.capcap",
    "~/Library/Containers/cn.skyrin.capcap.ShareExtension",
    "~/Library/Preferences/cn.skyrin.capcap.plist",
    "~/Library/Saved Application State/cn.skyrin.capcap.savedState",
  ]

  caveats <<~EOS
    This build is ad-hoc signed and not notarized by Apple.
    The cask removes the quarantine attribute during installation.
  EOS
end
