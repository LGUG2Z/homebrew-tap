class Rae < Formula
  desc "A docker-compose development environment orchestrator"
  homepage "https://github.com/LGUG2Z/rae"
  url "https://github.com/LGUG2Z/rae/releases/download/v0.0.3/rae_0.0.3_darwin_amd64.tar.gz"
  version "0.0.3"
  sha256 "1b86b8a5945adbb505b5d7db8fece432ad946291252925143b9810dc8689546c"
  
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
