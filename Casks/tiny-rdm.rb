cask "tiny-rdm" do
  arch arm: "arm64", intel: "intel"

  version "1.2.7"
  sha256 arm:   "aaebc58a1f97505743bf05f2ab1cfc5e7c3e5841d90266ad836eaab74435f1a3",
         intel: "3d8e61fa474ae50b61e41a623841fcdd7629615fa105758f2840fff75fe857ad"

  url "https://github.com/tiny-craft/tiny-rdm/releases/download/v#{version}/TinyRDM_#{version}_mac_#{arch}.dmg"
  name "Tiny RDM"
  desc "Modern lightweight Redis desktop manager"
  homepage "https://tinyrdm.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Tiny RDM.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/Tiny RDM.app"],
        must_succeed: false,
        print_stderr: false
  end

  uninstall quit: "com.tinycraft.tinyrdm"

  zap trash: [
    "~/Library/Caches/com.tinycraft.tinyrdm",
    "~/Library/Preferences/com.tinycraft.tinyrdm.plist",
    "~/Library/Preferences/TinyRDM",
    "~/Library/Saved Application State/com.tinycraft.tinyrdm.savedState",
    "~/Library/WebKit/com.tinycraft.tinyrdm",
  ]

  caveats <<~EOS
    This build is ad-hoc signed and not notarized by Apple.
    The cask removes the quarantine attribute during installation.
  EOS
end
