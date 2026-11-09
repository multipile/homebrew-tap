# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.11/pile-0.1.11-darwin-arm64.tar.gz"
      sha256 "f96df34fefe60e18874ceb4233b4cc795e0c7b3b561dcba2a853d6050ae05a94"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.11/pile-0.1.11-darwin-amd64.tar.gz"
      sha256 "6d707675e5844202fd11f27cb604f2ce00daebea3dd9350183f6d2144a184845"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.11/pile-0.1.11-linux-arm64.tar.gz"
      sha256 "46afdc1a33c2e8a3761a97bf49b6c44fa6370bbc8160a2b08c7f31754af17608"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.11/pile-0.1.11-linux-amd64.tar.gz"
      sha256 "d29fb36f042bc93905c17d5f152f7ac71648758fd313d10edabfa9a67e2f60fa"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
