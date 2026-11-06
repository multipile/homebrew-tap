# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.3/pile-0.1.3-darwin-arm64.tar.gz"
      sha256 "aa4a522458e168e537688d988a0f02915dd7285677e9bc4b7d58ec041dc8433e"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.3/pile-0.1.3-darwin-amd64.tar.gz"
      sha256 "6124d4041eab28191d29a916780a1ab99cf6dfe31180fb254671ed287a4185a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.3/pile-0.1.3-linux-arm64.tar.gz"
      sha256 "0b6fc72172701a97f4391db94b296ebfc0ada7b4bc6260e8392b74a4dbd8c375"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.3/pile-0.1.3-linux-amd64.tar.gz"
      sha256 "1205a149063d1ca2042d16deba4f230e4f0f759abda8eb39c62175bfc43ff6c0"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
