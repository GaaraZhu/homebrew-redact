class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.3.1/gate-0.3.1-aarch64-apple-darwin.tar.gz"
  sha256 "3000fda7e4ab29d96a33a1bde0cfd8bdc66dc10133a8984cb517f913e1ee4e7d"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
