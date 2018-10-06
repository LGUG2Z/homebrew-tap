class Rae < Formula
  desc "A docker-compose development environment orchestrator"
  homepage "https://github.com/LGUG2Z/rae"
  url "https://github.com/LGUG2Z/rae/releases/download/v0.0.2/rae_0.0.2_darwin_amd64.tar.gz"
  version "0.0.2"
  sha256 "73b7c6c9d01be2ec4e955131224c6d56250d4327edf504f5787a1be9fcd1a8d9"
  
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
