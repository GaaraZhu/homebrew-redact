class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.4.7/gate-0.4.7-aarch64-apple-darwin.tar.gz"
  sha256 "c74002bc29be2c804ecccfd3102195d39d676311c73b619d63a88b1d1e9a9a60"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
