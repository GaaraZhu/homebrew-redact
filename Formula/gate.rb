class Gate < Formula
  desc "PII-filtering CLI that intercepts AI agent query results and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/gate"
  license "MIT"
  version "0.6.9"

  on_macos do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.9/gate-0.6.9-aarch64-apple-darwin.tar.gz"
      sha256 "544f2df1eb506b5d0ebfe85907e528e3de359bcf4f18382a55522f82ccfce54c"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.9/gate-0.6.9-x86_64-apple-darwin.tar.gz"
      sha256 "f1c03892a6288d3cc68848d01b380f58f4cbee9e3e947a4c34b5845af4e1d710"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.9/gate-0.6.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "712293cf95573f9a5bfcc4e12ec1878417a9130477d620329ec3fa7479978f24"
    end
    on_intel do
      url "https://github.com/GaaraZhu/gate/releases/download/v0.6.9/gate-0.6.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b205b82e5f69812721eac8d6731be86a412fee5f74eb91539cb5ec96829bb3fe"
    end
  end

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("\#<built-in function bin>/gate version")
  end
end
