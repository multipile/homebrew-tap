# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.19/pile-0.1.19-darwin-arm64.tar.gz"
      sha256 "bf61a63c86273f61eaa008518efd3549562b40fba77319eaa2a1e8ecb37443f0"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.19/pile-0.1.19-darwin-amd64.tar.gz"
      sha256 "2f0bbe2e9eabedf5393765d0c0cc51988e440c1baa02586482dcc7e50b09670d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.19/pile-0.1.19-linux-arm64.tar.gz"
      sha256 "b854bd8bf9c3047ed2bab448a25ec89fc1f907b03cd28d093f1e58a3de785117"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.19/pile-0.1.19-linux-amd64.tar.gz"
      sha256 "a1ac3a85e91fd295f3500b5509229ec5e688b97a8538da690b0eefec6d4ad535"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
