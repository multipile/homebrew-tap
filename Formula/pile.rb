# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.15/pile-0.1.15-darwin-arm64.tar.gz"
      sha256 "9c0ff2ea71bf9c4a44c4d0e413d81744b79f7e5d96b8ce196e4bff1265bd0c31"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.15/pile-0.1.15-darwin-amd64.tar.gz"
      sha256 "7924ab69843657ad9836f161ee5c14e30f44f047f156e53fffb318ddc71e5afa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.15/pile-0.1.15-linux-arm64.tar.gz"
      sha256 "2fb4dd700052e6607c4560a7b34635d741d66d844ce3d70da7dc7e39bab512f2"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.15/pile-0.1.15-linux-amd64.tar.gz"
      sha256 "2f5cd46fe0614f2f4ad390d3c45d546a86f004e641ef74dcd298f8bd17a2f0a7"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
