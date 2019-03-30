# This file was generated by GoReleaser. DO NOT EDIT.
class Story < Formula
  desc "A workflow tool for implementing stories across a node meta-repo"
  homepage "https://github.com/LGUG2Z/story"
  url "https://github.com/LGUG2Z/story/releases/download/v0.1.1/story_0.1.1_darwin_amd64.tar.gz"
  version "0.1.1"
  sha256 "8907a0fb6490d853fd50885cc6eb5f0f446bd3cc989541e72c4de7b43d0f8838"

  def install
    bin.install "story"
    bash_completion.install "bash_autocomplete" => "story"
    zsh_completion.install "zsh_autocomplete" => "_story"
  end

  test do
    system "#{bin}/story --version"
  end
end
