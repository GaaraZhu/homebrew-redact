class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.3.9/gate-0.3.9-aarch64-apple-darwin.tar.gz"
  sha256 "6fa5f90df276963603c61f36bff985e2fa5ad0516e44b68d0c97048b052dc652"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
