class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.5.0/gate-0.5.0-aarch64-apple-darwin.tar.gz"
  sha256 "96ffc795a6d43875a1e8403f17a84b17019e39a0825702d0e53d2dd581b586df"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
