class SummonerTui < Formula
  desc "TUI Tool for scaffolding batteries-included Haskell projects"
  homepage "https://kowainik.github.io/projects/summoner"
  url "https://github.com/kowainik/summoner/releases/download/v2.0.1.1/summon-tui-osx"
  sha256 "442f1e9f84c69f3b6c5bc98dc7bc8a8a8550cdb8196f556c348144ba1762f897"

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
