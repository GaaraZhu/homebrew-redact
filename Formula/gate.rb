class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.4.0/gate-0.4.0-aarch64-apple-darwin.tar.gz"
  sha256 "f3db3aa0d5676625b82cbaf76b3c2eb1c7f15f9711d61036c67ac695694836cf"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
