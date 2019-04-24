# This file was generated by GoReleaser. DO NOT EDIT.
class Story < Formula
  desc "A workflow tool for implementing stories across a node meta-repo"
  homepage "https://github.com/LGUG2Z/story"
  url "https://github.com/LGUG2Z/story/releases/download/v0.3.2/story_0.3.2_darwin_amd64.tar.gz"
  version "0.3.2"
  sha256 "ee7482d56d4d90b9f6b617d00e677bd11a8f1f878a54c9c0f0b732fca7a13fb6"

  def install
    bin.install "story"
    bash_completion.install "bash_autocomplete" => "story"
    zsh_completion.install "zsh_autocomplete" => "_story"
  end

  test do
    system "#{bin}/story --version"
  end
end
