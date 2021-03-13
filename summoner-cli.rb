class SummonerCli < Formula
  desc "CLI Tool for scaffolding batteries-included Haskell projects"
  homepage "https://kowainik.github.io/projects/summoner"
  url "https://github.com/kowainik/summoner/releases/download/v2.0.0.0/summon-cli-osx"
  sha256 "8f9b5e51e4365c2d0de05a51ec6e3a03351e9daff5b5e39dd0634b7ba646c04d"

  bottle :unneeded
  depends_on "gh"
  conflicts_with "summoner-tui", :because => "because both install 'summon' binaries"

  def install
    bin.install "summon-cli-osx"
    mv "#{bin}/summon-cli-osx", "#{bin}/summon"
  end

  test do
    system "#{bin}/summon", "--version"
  end
end
