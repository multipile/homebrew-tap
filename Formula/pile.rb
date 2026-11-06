# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.5/pile-0.1.5-darwin-arm64.tar.gz"
      sha256 "b6084dc59d482b0d4e71de60f1bebf4fd1e85482ac698577548bbb0d01bb7584"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.5/pile-0.1.5-darwin-amd64.tar.gz"
      sha256 "f600efd75c9905ab744396c95e506b0ec00637465b337d4a58d8fe156283aa19"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.5/pile-0.1.5-linux-arm64.tar.gz"
      sha256 "66ad3c4d77975394ddfea2c41545356d2822c4c6127ea7a1f5023de001e3b3bd"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.5/pile-0.1.5-linux-amd64.tar.gz"
      sha256 "7d7033e38383b800fada2f20cd04adbeb55616c40e96ca363afea26d99dd03a9"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
