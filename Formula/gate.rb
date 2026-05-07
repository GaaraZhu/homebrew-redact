class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.4.1/gate-0.4.1-aarch64-apple-darwin.tar.gz"
  sha256 "8ef5de444d8627b1a9defd4cda293f6f2d9f5e571d66c2e23884b22231f1910d"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
