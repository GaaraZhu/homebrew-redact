class Gate < Formula
  desc "A deterministic privacy boundary between your data and AI"
  homepage "https://github.com/GaaraZhu/gate"
  url "https://github.com/GaaraZhu/gate/releases/download/v0.4.3/gate-0.4.3-aarch64-apple-darwin.tar.gz"
  sha256 "115e42de43451a2aaf675364f79fd6b58039956abaf1fc959e5e9bcba248c4e5"
  license "MIT"

  def install
    bin.install "gate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gate --version")
  end
end
