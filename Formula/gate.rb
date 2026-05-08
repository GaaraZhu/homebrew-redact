class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.4.4/gate-0.4.4-aarch64-apple-darwin.tar.gz"
  sha256 "ad95106bfc94b83f163990c72a79c84eaace2b33037cfac484167b38b8031b42"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
