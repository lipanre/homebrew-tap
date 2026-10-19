cask "yaak" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.0,main-build-2"
  sha256 arm:   "5bc5a3275d9df93a0b99ffaee93c71fa70052bff3e5df0ddd602610ba10295e5",
         intel: "5d86c42b305ea5d83486d58238af04272f37c29f42c1c7c681673e3c4c8ae6ba"

  url "https://github.com/lipanre/yaak/releases/download/#{version.csv.second}/Yaak_#{version.csv.first}_#{arch}.dmg"
  name "Yaak"
  desc "REST, GraphQL, WebSocket, SSE and gRPC client"
  homepage "https://yaak.app/"

  livecheck do
    skip "Builds are generated from every push to the main branch"
  end

  depends_on macos: :ventura

  app "Yaak.app"

  zap trash: [
    "~/Library/Application Support/app.yaak.desktop",
    "~/Library/Caches/app.yaak.desktop",
    "~/Library/Logs/app.yaak.desktop",
    "~/Library/Saved Application State/app.yaak.desktop.savedState",
    "~/Library/Webkit/app.yaak.desktop",
  ]

  caveats <<~EOS
    This Yaak build is not signed or notarized by Apple.
    If macOS prevents it from opening, allow it in System Settings > Privacy & Security.
  EOS
end
