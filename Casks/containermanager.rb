cask "containermanager" do
  version "1.1.1"
  sha256 "2fbb947d748e206baa8768597f4af350202be3f8461b698ee6e20a7b386b54ec"

  url "https://github.com/bartreardon/ContainerManager-App/releases/download/v#{version}/ContainerManager.dmg",
      verified: "github.com/bartreardon/ContainerManager-App/"
  name "Container Manager"
  desc "Front-end for Apple's container tool"
  homepage "https://github.com/bartreardon/ContainerManager-App/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "ContainerManager.app"

  # Only what this app writes. Deliberately not ~/Library/Application Support/
  # com.apple.container — that belongs to the container runtime, holds every image,
  # container and volume on the machine, and is not ours to remove.
  zap trash: [
    "~/Library/Application Support/ContainerManager",
    "~/Library/Preferences/com.bartreardon.ContainerManager.plist",
    "~/Library/Saved Application State/com.bartreardon.ContainerManager.savedState",
  ]
end
