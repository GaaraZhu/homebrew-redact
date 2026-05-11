class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.5.1/gate-0.5.1-aarch64-apple-darwin.tar.gz"
  sha256 "b81efcfe70d41dcb45e4f935091d056c29d59c81ef4255b62f6a156d2c4cc3bc"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
