class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.3.5/gate-0.3.5-aarch64-apple-darwin.tar.gz"
  sha256 "49b282f1cfa8366395bfe0f1e21580068555746261f63d956e3463d8c0f34a2f"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
