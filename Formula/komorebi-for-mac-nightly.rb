class KomorebiForMacNightly < Formula
  desc "Tiling window manager for macOS (nightly build)"
  homepage "https://github.com/KomoCorp/komorebi-for-mac"
  url "https://api.github.com/repos/KomoCorp/komorebi-for-mac/releases/assets/322350058",
      headers: [
        "Accept: application/octet-stream",
        "X-GitHub-Api-Version: 2022-11-28",
        "Authorization: bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN")}",
      ]
  version "0.1.0-nightly-2025-11-29-15:45:16"
  sha256 "70aac1aca6fb83d06b06fc14b2b5aaef40fc3e31858707783f79ca4e86be2f8e"
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
