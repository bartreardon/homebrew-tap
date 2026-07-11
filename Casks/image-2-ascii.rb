cask "image-2-ascii" do
  version "1.1.0"
  sha256 "c32059e73a25d4f06aa0821c717b74b31d9952a71bb082e39c4940ca1105c8f6"

  url "https://github.com/bartreardon/img2ascii/releases/download/#{version}/image-2-ascii-#{version}.zip"
  name "Image 2 ASCII"
  desc "Convert images and text into colored ASCII-art banners"
  homepage "https://github.com/bartreardon/img2ascii/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "Image 2 ASCII.app"

  zap trash: [
    "~/Library/Application Support/Image 2 ASCII",
    "~/Library/Preferences/com.bartreardon.Image-2-ASCII.plist",
  ]
end
