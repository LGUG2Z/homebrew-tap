class KomorebiForMac < Formula
  desc "Tiling window manager for macOS"
  homepage "https://github.com/LGUG2Z/komorebi-for-mac"
  url "https://github.com/LGUG2Z/komorebi-for-mac/releases/download/v0.1.0/komorebi-v0.1.0-aarch64-apple-darwin.zip"
  sha256 "4afa1575c35b084e3147013f081ac3f2704c3abddf8a7ce4a65dbd24982c7073"
  license "Komorebi License 2.0.0"

  def install
    bin.install Dir["*"]

    system "codesign", "--force", "-s", "-", "#{bin}/komorebi"
    system "codesign", "--force", "-s", "-", "#{bin}/komorebic"
    system "codesign", "--force", "-s", "-", "#{bin}/komorebi-bar"
  end

  test do
    system "#{bin}/komorebi", "--help"
  end
end
