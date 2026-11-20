# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.20/pile-0.1.20-darwin-arm64.tar.gz"
      sha256 "adcfe64843a4be4e6761703d1bc0b64d4a7706bb02277cfd68a82afe8274bc67"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.20/pile-0.1.20-darwin-amd64.tar.gz"
      sha256 "d6f952994f577b831bf4f3dbea0333d8f82f2994b0f9824309fee89f3ae8dcb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.20/pile-0.1.20-linux-arm64.tar.gz"
      sha256 "1d08ba511a9ecee77096ab05f3728cfbf2fd924190161c36f1385da8f6c08c40"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.20/pile-0.1.20-linux-amd64.tar.gz"
      sha256 "4ab61c868beb1ec5ebcd2dd3fa0217800c5226de05a0203eac8cfc5cfb040557"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
