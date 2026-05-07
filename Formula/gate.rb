class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.3.7/gate-0.3.7-aarch64-apple-darwin.tar.gz"
  sha256 "fdcec22db1b02b727cbe9689b625fae47cb71825fa23962754905b6e05624a6e"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
