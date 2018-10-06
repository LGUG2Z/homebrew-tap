class Rae < Formula
  desc "A docker-compose development environment orchestrator"
  homepage "https://github.com/LGUG2Z/rae"
  url "https://github.com/LGUG2Z/rae/releases/download/v0.0.2/rae_0.0.2_darwin_amd64.tar.gz"
  version "0.0.2"
  sha256 "db6429778a6a4e65534c378fd095127f63c19bbf533f37c6bfe86e8b4c027927"
  
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
