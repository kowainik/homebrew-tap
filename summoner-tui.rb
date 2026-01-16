class SummonerTui < Formula
  desc "TUI Tool for scaffolding batteries-included Haskell projects"
  homepage "https://kowainik.github.io/projects/summoner"
  url "https://github.com/kowainik/summoner/releases/download/v2.2.0.0/summon-tui-macos-arm64"
  sha256 "b6a5a9bb8616d953969fd2171ccabc47b0d67958164cf26c95cbd54c8b3d03e2"

  depends_on "gh"
  conflicts_with "summoner-cli", :because => "because both install 'summon' binaries"

  def install
    odie "This formula currently supports only Apple Silicon (arm64) macOS" unless Hardware::CPU.arm?
    bin.install "summon-tui-macos-arm64" => "summon"
  end

  test do
    system "#{bin}/summon", "--version"
  end
end
