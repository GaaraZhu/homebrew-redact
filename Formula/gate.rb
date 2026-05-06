class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.3.2/gate-0.3.2-aarch64-apple-darwin.tar.gz"
  sha256 "2974ab5af54575a86a60f54f991ffd80630578d1385b6886e76f3b8849156321"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
