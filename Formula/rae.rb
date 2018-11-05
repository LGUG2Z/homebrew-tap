class Rae < Formula
  desc "A docker-compose development environment orchestrator"
  homepage "https://github.com/LGUG2Z/rae"
  url "https://github.com/LGUG2Z/rae/releases/download/v0.0.6/rae_0.0.6_darwin_amd64.tar.gz"
  version "0.0.6"
  sha256 "af2d0157d8c56ca5a7ce3bb22123abf467f908256eb23c295d134b615c59be46"
  
  depends_on "docker"

  def install
    bin.install "rae"
    bash_completion.install "bash_autocomplete"
    zsh_completion.install "zsh_autocomplete"
  end

  test do
    system "#{bin}/rae --version"
  end
end
