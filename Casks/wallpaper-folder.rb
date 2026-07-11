# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "wallpaper-folder" do
  version "1.1.0"
  sha256 "91f251782618b2427ab533fb817084d73730e1ab20c08c51569458e8ac29d63a"

  url "https://github.com/bartreardon/WallpaperFolderManager/releases/download/#{version}/wallpaper-folder-#{version}.pkg"
  name "Wallpaper Folder Manager"
  desc "Manage wallpaper folders on macOS"
  homepage "https://github.com/bartreardon/WallpaperFolderManager/"

  # Documentation: https://docs.brew.sh/Brew-Livecheck
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  pkg "wallpaper-folder-#{version}.pkg"

  uninstall pkgutil: "au.bartreardon.wallpaper-folder",
            delete:  "/usr/local/bin/wallpaper-folder"

end
