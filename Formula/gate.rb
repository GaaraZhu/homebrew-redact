class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.3.6/gate-0.3.6-aarch64-apple-darwin.tar.gz"
  sha256 "6f1eb2e6beabda8d1d47d1a47ad4ccef9679ebec2e03df78aff20f1bb429e0df"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
