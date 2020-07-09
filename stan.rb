class Stan < Formula
  desc "Haskell STatic ANalyser"
  homepage "https://kowainik.github.io/projects/stan"
  url "https://github.com/kowainik/stan/releases/download/v0.0.1.0/stan-0.0.1.0-macOS-ghc-8.10.1"
  sha256 "9be4a5e45ec5b17b940f117fe765b53764f1cd2ea596d9ad24109a7dc0e6637a"

  bottle :unneeded

  def install
    bin.install "stan-0.0.1.0-macOS-ghc-8.10.1"
    mv "#{bin}/stan-0.0.1.0-macOS-ghc-8.10.1", "#{bin}/stan"
  end

  test do
    system "#{bin}/stan", "--version"
  end
end
