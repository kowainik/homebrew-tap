class SummonerTui < Formula
  desc "TUI Tool for scaffolding batteries-included Haskell projects"
  homepage "https://kowainik.github.io/projects/summoner"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kowainik/summoner/releases/download/v2.2.0.0/summon-tui-macos-arm64"
      sha256 "b6a5a9bb8616d953969fd2171ccabc47b0d67958164cf26c95cbd54c8b3d03e2"
    else
      url "https://github.com/kowainik/summoner/releases/download/v2.2.0.0/summoner-tui-2.2.0.0-macos-x86_64"
      sha256 "75991388620092fd66a44a5c67607bc712b20cc951da5618e004207400ed7cdf"
    end
  end

  depends_on "gh"
  conflicts_with "summoner-cli", :because => "because both install 'summon' binaries"

  def install
    if Hardware::CPU.arm?
      bin.install "summon-tui-macos-arm64" => "summon"
    else
      bin.install "summoner-tui-2.2.0.0-macos-x86_64" => "summon"
    end
  end

  test do
    system "#{bin}/summon", "--version"
  end
end
