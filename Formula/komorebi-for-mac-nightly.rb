class KomorebiForMacNightly < Formula
  desc "Tiling window manager for macOS (nightly build)"
  homepage "https://github.com/KomoCorp/komorebi-for-mac"
  url "https://api.github.com/repos/KomoCorp/komorebi-for-mac/releases/assets/312910827",
      headers: [
        "Accept: application/octet-stream",
        "X-GitHub-Api-Version: 2022-11-28",
        "Authorization: bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN")}",
      ]
  version "nightly"
  sha256 "559766bab68079ead7ef080479615c5339dcc2c5af2e63243a21599e999053ad"
  license "Komorebi License 2.0.0"

  def install
    bin.install Dir["*"]
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
