# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.18/pile-0.1.18-darwin-arm64.tar.gz"
      sha256 "a7244b5faabe63f80bf1d3f91803fdf12461d28851e0efeb04bf43fcdbc2b71c"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.18/pile-0.1.18-darwin-amd64.tar.gz"
      sha256 "14e516dc68275ee2bf9e41288d8d0bb7fc9e097f33739b180ffa2606c8bae71a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.18/pile-0.1.18-linux-arm64.tar.gz"
      sha256 "7617c5fb739646ea57c87dbe9ca48a6ec994e81c13be97758d6f9d21d388735c"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.18/pile-0.1.18-linux-amd64.tar.gz"
      sha256 "daf831543aea6d9ad367fd509a9b33088431e86363e39e3a066cf84745efe785"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
