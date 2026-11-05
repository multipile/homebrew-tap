# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.2/pile-0.1.2-darwin-arm64.tar.gz"
      sha256 "53d78112f063c9beaf5e1ec2c68115b47e525f557a6efc23e99c80ac8a1b61da"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.2/pile-0.1.2-darwin-amd64.tar.gz"
      sha256 "2bd8f3d61063c3bb779e26ec9a7752fe23128c5ea1b50c4d058d123525f6c41b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.2/pile-0.1.2-linux-arm64.tar.gz"
      sha256 "e9d2497853d05e54f1fd0d498e381d7b88e8526ed90a9dad187acd86ff1562ed"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.2/pile-0.1.2-linux-amd64.tar.gz"
      sha256 "4684c4b628ea940498c05dca3366efb614fe26c6acc16cdd1cafe0105f7cc883"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
