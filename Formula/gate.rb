class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.2.1/gate-0.2.1-aarch64-apple-darwin.tar.gz"
  sha256 "a70c692c548ae64f18cacf06dbbbadd9b1d1fe5c7483cf6d43af7e965daddd5e"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
