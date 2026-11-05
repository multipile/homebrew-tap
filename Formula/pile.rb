# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.1/pile-0.1.1-darwin-arm64.tar.gz"
      sha256 "33945842c4bc7d06d78d45fd7c099565cfe46400d3d934623eb25d6f8ebf5800"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.1/pile-0.1.1-darwin-amd64.tar.gz"
      sha256 "0f0b4302352d156f596a0c155f57856ad6aab6f781c0d94e0881efeb0179bb01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.1/pile-0.1.1-linux-arm64.tar.gz"
      sha256 "7c4426a43f4621db2b80bb045de696eb2ec12c28a1a487ff6b66960f93a95a8a"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.1/pile-0.1.1-linux-amd64.tar.gz"
      sha256 "6015e2ae99d7966028d8e09ca78f31b4dfbc46ac91f5e25cc438d749b4287de2"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
