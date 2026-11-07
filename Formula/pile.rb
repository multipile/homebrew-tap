# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.6/pile-0.1.6-darwin-arm64.tar.gz"
      sha256 "d11fe859b3dad1fd7069baa9a2c581af8d7ef951002a250497d78d794b1c2a72"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.6/pile-0.1.6-darwin-amd64.tar.gz"
      sha256 "f47ca8370fc00543df612f1032e60fc9ec50199ac1626909550d1efe6082e050"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.6/pile-0.1.6-linux-arm64.tar.gz"
      sha256 "d127342d71dba172281af124b51e8258361a94e0c1db50fc729b3c5ca18c0f20"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.6/pile-0.1.6-linux-amd64.tar.gz"
      sha256 "36a5335a77d6cf9cce442ce356db90987bf6108e86ddad489f216e6b067ace90"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
