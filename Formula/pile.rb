# Written by scripts/update-formula. Change the script, not this file.
class Pile < Formula
  desc "Declare and read piles, the parts of a git repository"
  homepage "https://github.com/multipile/pile-cli"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.4/pile-0.1.4-darwin-arm64.tar.gz"
      sha256 "5923a9518250b91afcdb2d65a7f0a1bea0b02f106ac9edfb576a82fe5359fd31"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.4/pile-0.1.4-darwin-amd64.tar.gz"
      sha256 "2efc6c8dd8b4b6f5a36d9bf45fdebe8c2560d51eea23d680f30b466b533a9f35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.4/pile-0.1.4-linux-arm64.tar.gz"
      sha256 "80b6e11584a012815779d9dc76fb09d406922e76d90aa1f43c663c83584861c3"
    end
    on_intel do
      url "https://github.com/multipile/pile-cli/releases/download/v0.1.4/pile-0.1.4-linux-amd64.tar.gz"
      sha256 "b2e053d090c987b49d66220f3ad0e23d6524def52f86fb79ba7756d6f561abc7"
    end
  end

  def install
    bin.install "pile"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pile version")
  end
end
