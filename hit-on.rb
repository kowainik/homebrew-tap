class HitOn < Formula
  desc "Kowainik Git Workflow Helper Tool"
  homepage "https://kowainik.github.io/projects/hit-on"
  url "https://github.com/kowainik/hit-on/releases/download/v0.1.0.0/hit-osx"
  sha256 "004496fa60d13808d69dc4268f4a52dc5c274fecb89d3f6ffb8e2365093f717e"

  bottle :unneeded

  def install
    bin.install "hit-osx"
    mv "#{bin}/hit-osx", "#{bin}/hit"
  end

  test do
    system "#{bin}/hit", "--version"
  end
end
