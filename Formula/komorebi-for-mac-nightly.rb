class KomorebiForMacNightly < Formula
  desc "Tiling window manager for macOS (nightly build)"
  homepage "https://github.com/KomoCorp/komorebi-for-mac"
  url "https://api.github.com/repos/KomoCorp/komorebi-for-mac/releases/assets/335543829",
      headers: [
        "Accept: application/octet-stream",
        "X-GitHub-Api-Version: 2022-11-28",
        "Authorization: bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN")}",
      ]
  version "0.1.0-nightly-2026-01-02-07:45:27"
  sha256 "c2b654184ea707abd4cd49f82d2360724d265996db1ced72017f1772a3e145ac"
  license "Komorebi License 2.0.0"

  def install
    bin.install Dir["*"]

    system "codesign", "--force", "-s", "-", "#{bin}/komorebi"
    system "codesign", "--force", "-s", "-", "#{bin}/komorebic"
    system "codesign", "--force", "-s", "-", "#{bin}/komorebi-bar"
  end

  def caveats
    <<~EOS
      This formula requires access to a private GitHub repository.
      Make sure you have set your GitHub token:

      export HOMEBREW_GITHUB_API_TOKEN=your_token_here
    EOS
  end

  test do
    system "#{bin}/komorebi", "--help"
  end
end
