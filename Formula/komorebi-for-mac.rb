class KomorebiForMac < Formula
  desc "Tiling window manager for macOS"
  homepage "https://github.com/LGUG2Z/komorebi-for-mac"
  url "https://github.com/LGUG2Z/komorebi-for-mac/releases/download/v0.1.1/komorebi-v0.1.1-aarch64-apple-darwin.zip"
  sha256 "b11209203b5baf3c8f3b1099062e61e73e5afacf5d1c104e7e3b73dcc8296b71"
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
