class KomorebiForMac < Formula
  desc "Tiling window manager for macOS"
  homepage "https://github.com/LGUG2Z/komorebi-for-mac"
  url "https://github.com/LGUG2Z/komorebi-for-mac/releases/download/v0.1.0-prerelease/komorebi-nightly-aarch64-apple-darwin.zip"
  version "0.1.0-prerelease-2026-01-30-11:41:41"
  sha256 "59202d4be1e2f5ddaed39081f02b9edf19cbbf662ac7edbe8d467e44b6bf991d"
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
