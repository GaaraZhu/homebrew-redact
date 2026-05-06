class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.3.0/gate-0.3.0-aarch64-apple-darwin.tar.gz"
  sha256 "fe348a2c1b125d1fc54174cf520d2c9f39385fb852803d4170e341d03d172573"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
