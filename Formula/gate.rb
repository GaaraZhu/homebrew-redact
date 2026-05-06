class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.3.3/gate-0.3.3-aarch64-apple-darwin.tar.gz"
  sha256 "497e802569a6f80fc103d1634800b480cd0a3b07c6651a6f9427dbae8720fb06"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
