class Rae < Formula
  desc "A docker-compose development environment orchestrator"
  homepage "https://github.com/LGUG2Z/rae"
  url "https://github.com/LGUG2Z/rae/releases/download/v0.0.1/rae_0.0.1_darwin_amd64.tar.gz"
  version "0.0.1"
  sha256 "a3a95a42c257a4802b13fdbf2672d00547842dc5f4c52e1616e003598f03f697"
  
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
