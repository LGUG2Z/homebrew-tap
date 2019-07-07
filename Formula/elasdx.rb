# This file was generated by GoReleaser. DO NOT EDIT.
class Elasdx < Formula
  desc "An ElasticSearch index template updating, reindexing and cleanup tool"
  homepage "https://github.com/LGUG2Z/elasdx"
  version "0.0.3"

  if OS.mac?
    url "https://github.com/LGUG2Z/elasdx/releases/download/v0.0.3/elasdx_0.0.3_darwin_amd64.tar.gz"
    sha256 "1ba7fe8c336ced1a7aeab9374c8b34964bc4961ac0fba873c66d98126ed40e36"
  elsif OS.linux?
    url "https://github.com/LGUG2Z/elasdx/releases/download/v0.0.3/elasdx_0.0.3_linux_amd64.tar.gz"
    sha256 "754516cf205cb278d748c4fe5906e508be4893c945024a15e3f0f58689cbd12b"
  end

  def install
    bin.install "elasdx"
  end

  test do
    system "#{bin}/elasdx --version"
  end
end
