class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.4.8/gate-0.4.8-aarch64-apple-darwin.tar.gz"
  sha256 "520d5de313890c9699dbde00cffc405a6e5066ec33dc39b02440b9f14f37be94"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
