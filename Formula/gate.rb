class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.4.2/gate-0.4.2-aarch64-apple-darwin.tar.gz"
  sha256 "c5e22b02dd37074db3c18f10189396f8ada4340f132227dbdbe8775cedcfbf14"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
