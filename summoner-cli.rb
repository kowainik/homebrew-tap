class SummonerCli < Formula
  desc "CLI Tool for scaffolding batteries-included Haskell projects"
  homepage "https://kowainik.github.io/projects/summoner"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kowainik/summoner/releases/download/v2.2.0.0/summon-cli-macos-arm64"
      sha256 "ac687412d4a51d403df514ed581d72982c7bc924710e73db6a946d8345cee6e3"
    else
      url "https://github.com/kowainik/summoner/releases/download/v2.2.0.0/summoner-2.2.0.0-macos-x86_64"
      sha256 "84df0d63c5d6094256c288ca2110595a2323ec19dd5496a748946c9c8f9da486"
    end
  end

  depends_on "gh"
  conflicts_with "summoner-tui", :because => "because both install 'summon' binaries"

  def install
    if Hardware::CPU.arm?
      bin.install "summon-cli-macos-arm64" => "summon"
    else
      bin.install "summoner-2.2.0.0-macos-x86_64" => "summon"
    end
  end

  test do
    system "#{bin}/summon", "--version"
  end
end
