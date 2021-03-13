class SummonerCli < Formula
  desc "CLI Tool for scaffolding batteries-included Haskell projects"
  homepage "https://kowainik.github.io/projects/summoner"
  url "https://github.com/kowainik/summoner/releases/download/v2.0.1.1/summon-cli-osx"
  sha256 "cb18dda777d3b246c5952b62f1a4ed051804d00bfae7ebd2ffc251dea117075f"

  bottle :unneeded
  depends_on "hub"
  conflicts_with "summoner-tui", :because => "because both install 'summon' binaries"

  def install
    bin.install "summon-cli-osx"
    mv "#{bin}/summon-cli-osx", "#{bin}/summon"
  end

  test do
    system "#{bin}/summon", "--version"
  end
end
