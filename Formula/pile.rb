# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.13/pile-0.1.13-darwin-arm64.tar.gz"
      sha256 "103fed117bdc20faaaebcbbd9e8d53aa43a97c35df6ee68aeee85eb88e1f0434"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.13/pile-0.1.13-darwin-amd64.tar.gz"
      sha256 "30d9f0c989adf8d5e1167c5e5725423ed963d763b865391c7d6287de49b2c72e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.13/pile-0.1.13-linux-arm64.tar.gz"
      sha256 "7a2ca35a2822427243a5282afabdcd4f4348fa46deb361841a7a169dfa4de097"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.13/pile-0.1.13-linux-amd64.tar.gz"
      sha256 "e8c2ccdd6070c076b3a9522dee7ca66514e156522d2731f6e9dec1ab03f5a104"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
