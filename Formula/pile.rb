# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.14/pile-0.1.14-darwin-arm64.tar.gz"
      sha256 "5b449e9678f115b730d76d23d5ecb2a91dee3d3cb96c983e2b10c4e563af47f3"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.14/pile-0.1.14-darwin-amd64.tar.gz"
      sha256 "cea24d6ed78b9d18c2af138243e0e39fa678b5e06c3f3e24f0d007da36057207"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.14/pile-0.1.14-linux-arm64.tar.gz"
      sha256 "d2a6dc746083be48d46455801317bac9c055ec220eeae08b16a3548318417eac"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.14/pile-0.1.14-linux-amd64.tar.gz"
      sha256 "d7b4e97944210f7339ba6becd197b82bda5abe2ecb32ade669ca7c272b24a2f7"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
