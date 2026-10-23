cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.1,v1.0.1"
  sha256 arm:   "4ce834f5b99d8197dfd9cbc591dec9b0f948fbc154ed28d3e33b10b2e90bc75a",
         intel: "28897b30ba5117b4bb62745b55fc08e2d66d48822608f8ac72acac28f57aeb4d"

  url "https://github.com/lipanre/yaak/releases/download/#{version.csv.second}/Yaak_#{version.csv.first}_#{arch}.dmg"
  name "Yaak"
  desc "REST, GraphQL, WebSocket, SSE and gRPC client"
  homepage "https://yaak.app/"

  livecheck do
    skip "Builds are generated from every push to the main branch"
  end

  depends_on macos: :ventura

  app "Yaak.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args:         ["-dr", "com.apple.quarantine", "{{appdir}}/Yaak.app"],
        must_succeed: false,
        print_stderr: false
  end

  zap trash: [
    "~/Library/Application Support/app.yaak.desktop",
    "~/Library/Caches/app.yaak.desktop",
    "~/Library/Logs/app.yaak.desktop",
    "~/Library/Saved Application State/app.yaak.desktop.savedState",
    "~/Library/Webkit/app.yaak.desktop",
  ]

  caveats <<~EOS
    This Yaak build is ad-hoc signed and not notarized by Apple.
    The cask removes the quarantine attribute during installation.
  EOS
end
