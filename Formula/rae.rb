class Rae < Formula
  desc "A docker-compose development environment orchestrator"
  homepage "https://github.com/LGUG2Z/rae"
  url "https://github.com/LGUG2Z/rae/releases/download/v0.0.4/rae_0.0.4_darwin_amd64.tar.gz"
  version "0.0.4"
  sha256 "14223bdf44d7dfc2d1c718c4d5877bec7c002265822aa2dced1819534879bd14"
  
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
