# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.7/pile-0.1.7-darwin-arm64.tar.gz"
      sha256 "efffecc86db12172b3b18d553645e6a2d8c18652acfc20369d7687aea461ce9c"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.7/pile-0.1.7-darwin-amd64.tar.gz"
      sha256 "8e2960d960e0c511e1b4c1b17d57897ea85c97a1714c4c6a0c045c475e026d8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.7/pile-0.1.7-linux-arm64.tar.gz"
      sha256 "f86e47d88af991d8ca09bce256d79a194459f405d824801c7fa46be7b96f48c1"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.7/pile-0.1.7-linux-amd64.tar.gz"
      sha256 "5112c067e0cfad1714520c02bf15100d814d1515b466ecf197de5c8f44fc26af"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
