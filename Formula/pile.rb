# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.17/pile-0.1.17-darwin-arm64.tar.gz"
      sha256 "430ba0d3dd16114512ffbbdb622791025c99d9b5d2886c9e8a786829ee9813ad"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.17/pile-0.1.17-darwin-amd64.tar.gz"
      sha256 "f1be224a9c1df44ae42fc26b8e4c811b29726241df225e3c38f30ddbda4e50f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.17/pile-0.1.17-linux-arm64.tar.gz"
      sha256 "f647df504bfa538a63579209691a151a1b135a552a40e3347a06743a5ab2332d"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.17/pile-0.1.17-linux-amd64.tar.gz"
      sha256 "673a7fb81ed3fb8a880635bacac925db1327f63e7ce45658442fb0cb7b23f17b"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
