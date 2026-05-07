class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.3.4/gate-0.3.4-aarch64-apple-darwin.tar.gz"
  sha256 "e4e53e9300787a688685f738d4fd3a4c3abf926aeb99cdc6aa068675b70832ea"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
