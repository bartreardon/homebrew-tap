# Documentation: https://docs.brew.sh/Cask-Cookbook
#                https://docs.brew.sh/Adding-Software-to-Homebrew#cask-stanzas
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
cask "wallpaper-folder" do
  version "1.0.2"
  sha256 "c767a893248964726be5d661c786d6b989bfd376322d7bb44589f610ed9e2e46"

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
