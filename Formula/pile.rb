# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.12/pile-0.1.12-darwin-arm64.tar.gz"
      sha256 "3a82876c0e02339f69f5f10036389a4542cea3283ae0c73a581cc2e5f2f58b1f"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.12/pile-0.1.12-darwin-amd64.tar.gz"
      sha256 "0037fe9bed22845e88c7c9c1a046fc68b9322b2e35e8a3d793f04e211a0b2c2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.12/pile-0.1.12-linux-arm64.tar.gz"
      sha256 "545e5d05f644a17ab955c2bd39ca94829e1846a2bc822839768efd904ad3557b"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.12/pile-0.1.12-linux-amd64.tar.gz"
      sha256 "4813cf20b0b39d82d52200a7f812beed55a91e1c009a658e62c0746f5b415666"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
