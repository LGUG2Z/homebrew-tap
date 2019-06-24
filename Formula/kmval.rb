# This file was generated by GoReleaser. DO NOT EDIT.
class Kmval < Formula
  desc "A Kustomize manifest validator"
  homepage "https://github.com/LGUG2Z/kmval"
  version "0.0.2"

  if OS.mac?
    url "https://github.com/LGUG2Z/kmval/releases/download/v0.0.2/kmval_0.0.2_darwin_amd64.tar.gz"
    sha256 "1ac458186041cd9e54f5e4ddfadff1024283b47c64085ed25a884853caad89d6"
  elsif OS.linux?
    url "https://github.com/LGUG2Z/kmval/releases/download/v0.0.2/kmval_0.0.2_linux_amd64.tar.gz"
    sha256 "bc6fa130b3c9719a3dfffd80bb82173ae5dcbdd61fb230a40c74c170b62bee20"
  end
  
  depends_on "yq"
  depends_on "kustomize"

  def install
    bin.install "kmval"
  end

  test do
    system "#{bin}/kmval --version"
  end
end
