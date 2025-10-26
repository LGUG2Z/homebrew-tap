class KomorebiForMacNightly < Formula
  desc "A tiling window manager for macOS (nightly build)"
  homepage "https://github.com/KomoCorp/komorebi-for-mac"
  version "nightly"
  license "Komorebi License 2.0.0"

  url "https://api.github.com/repos/KomoCorp/komorebi-for-mac/releases/assets/308949887",
      headers: [
        "Accept: application/octet-stream",
        "X-GitHub-Api-Version: 2022-11-28",
        "Authorization: bearer #{ENV.fetch('HOMEBREW_GITHUB_API_TOKEN')}"
      ]

  sha256 "d91583e5479ed0a23bfb9c7253e8f1f32dcedc0e0d1b886ff54d43894f670724"

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
