class Rae < Formula
  desc "A docker-compose development environment orchestrator"
  homepage "https://github.com/LGUG2Z/rae"
  url "https://github.com/LGUG2Z/rae/releases/download/v0.0.4/rae_0.0.4_darwin_amd64.tar.gz"
  version "0.0.4"
  sha256 "a34220f9e47769762ffdc2b29aa3d48f091c6663b6dfb1e0362d7b528e0bb31b"
  
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
