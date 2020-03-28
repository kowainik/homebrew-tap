class SummonerTui < Formula
  desc "TUI Tool for scaffolding batteries-included Haskell projects"
  homepage "https://kowainik.github.io/projects/summoner"
  url "https://github.com/kowainik/summoner/releases/download/v2.0.0.0/summon-tui-osx"
  sha256 "0a264c29e142fc1bbc8b9be37aac10f896bb254558b42dc4c87c4535a4013146"

  bottle :unneeded
  depends_on "hub"
  conflicts_with "summoner-cli", :because => "because both install 'summon' binaries"

  def install
    bin.install "summon-tui-osx"
    mv "#{bin}/summon-tui-osx", "#{bin}/summon"
  end

  test do
    system "#{bin}/summon", "--version"
  end
end
