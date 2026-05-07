class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.3.8/gate-0.3.8-aarch64-apple-darwin.tar.gz"
  sha256 "3d9ade74ba97ecc73253fe9581929b12a60a72d3ce129f72a26c2d87b23d2697"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
