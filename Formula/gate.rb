class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.4.6/gate-0.4.6-aarch64-apple-darwin.tar.gz"
  sha256 "1f837af99f739f1c49d7a9566fdb29f6dfdda5acc1c4357ad986eebe68bb549d"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
