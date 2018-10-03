class Rae < Formula
  desc "A docker-compose development environment orchestrator"
  homepage "https://github.com/LGUG2Z/rae"
  url "https://github.com/LGUG2Z/rae/releases/download/v0.0.1/rae_0.0.1_darwin_amd64.tar.gz"
  version "0.0.1"
  sha256 "1bfea236834b3e2da6316ade09989f46243c49fd6f3dc4606d7305b9d2ac86df"
  
  depends_on "docker"

  def install
    bin.install "rae"
    bash_completion.install "bash_autocopmlete"
  end

  test do
    system "#{bin}/rae --version"
  end
end
