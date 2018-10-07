class Rae < Formula
  desc "A docker-compose development environment orchestrator"
  homepage "https://github.com/LGUG2Z/rae"
  url "https://github.com/LGUG2Z/rae/releases/download/v0.0.5/rae_0.0.5_darwin_amd64.tar.gz"
  version "0.0.5"
  sha256 "24edf15837040329875e61a387d283bbc094aa7b6af6856da9648de62551f5e4"
  
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
