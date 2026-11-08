# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.9/pile-0.1.9-darwin-arm64.tar.gz"
      sha256 "69462c98eb185c8e57960c2940277394e04034f867da305a818f68fcddf396ae"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.9/pile-0.1.9-darwin-amd64.tar.gz"
      sha256 "403f13c228c8b4f389c6927249d66d9b8b9b3835a7f2879ef175595457e53cfc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.9/pile-0.1.9-linux-arm64.tar.gz"
      sha256 "050c2bd485a952565ce3fa39ce0d2f601350b0704dcba6105739468857cc6c9e"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.9/pile-0.1.9-linux-amd64.tar.gz"
      sha256 "cdc626b712b2272a5e5800fd1a76240e9c40e5792a50114fb52adca8560992d6"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
