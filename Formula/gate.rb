class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.4.9/gate-0.4.9-aarch64-apple-darwin.tar.gz"
  sha256 "095343f9936b248a69798484cee2f2ea0381c2d8df330494dc53f4c911f0bed9"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
