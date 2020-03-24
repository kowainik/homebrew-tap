# coding: utf-8
class LifeSync < Formula
  desc "🔄 Synchronize personal configs across multiple machines"
  homepage "https://kowainik.github.io/projects/life-sync"
  url "https://github.com/kowainik/life-sync/releases/download/v1.1.0.0/life-osx"
  sha256 "8ab6b552b6c09463c614b01b3cfeab74b24d79b484fbdfdd93f735f8f7ab543e"

  bottle :unneeded

  def install
    bin.install "life-osx"
    mv "#{bin}/life-osx", "#{bin}/life"
  end

  test do
    system "#{bin}/life", "--help"
  end
end
