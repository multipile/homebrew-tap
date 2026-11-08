# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.8/pile-0.1.8-darwin-arm64.tar.gz"
      sha256 "63773ebb372a490f72441c93b23fd880f1b07b32e4726856c696d7587434e809"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.8/pile-0.1.8-darwin-amd64.tar.gz"
      sha256 "aa1c9b3ec22c21493ee43b9c21740b6a2aad06982d7ba3a6137cccbf67df0884"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.8/pile-0.1.8-linux-arm64.tar.gz"
      sha256 "2c4b3f6a89dff980448bfb1119e98a39a7592d9e75c26c20d86cb987c9423ccd"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.8/pile-0.1.8-linux-amd64.tar.gz"
      sha256 "47db0a9ac9ef808816b69fb99a66c471e461e2e1450eda7da23bca792bc0e6ce"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
