# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.16/pile-0.1.16-darwin-arm64.tar.gz"
      sha256 "2b14b4a3c18c2f084a7db03e59f1c87d803a1a9248818cc7297ed2abc7ff066b"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.16/pile-0.1.16-darwin-amd64.tar.gz"
      sha256 "72b3ec18b4082af86f18664809cf5c19b1d07a4fe48fe5f2074bfc8034ac6a08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.16/pile-0.1.16-linux-arm64.tar.gz"
      sha256 "d9802c29de75f8757cbd6484ed7754590868f9de0a1c16d959ae2bce2e33ac92"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.16/pile-0.1.16-linux-amd64.tar.gz"
      sha256 "9de9d73cc840610a8600409f5771889054ac27b6273d606dcce11ffc793a0a7e"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
