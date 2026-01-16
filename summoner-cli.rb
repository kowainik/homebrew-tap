class SummonerCli < Formula
  desc "CLI Tool for scaffolding batteries-included Haskell projects"
  homepage "https://kowainik.github.io/projects/summoner"
  url "https://github.com/kowainik/summoner/releases/download/v2.2.0.0/summon-cli-macos-arm64"
  sha256 "ac687412d4a51d403df514ed581d72982c7bc924710e73db6a946d8345cee6e3"

  depends_on "gh"
  conflicts_with "summoner-tui", :because => "because both install 'summon' binaries"

  def install
    odie "This formula currently supports only Apple Silicon (arm64) macOS" unless Hardware::CPU.arm?
    bin.install "summon-cli-macos-arm64" => "summon"
  end

  test do
    system "#{bin}/summon", "--version"
  end
end
