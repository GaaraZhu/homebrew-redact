class Redact < Formula
  desc "PII-filtering CLI that intercepts AI agent query commands and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/redact"
  url "https://github.com/GaaraZhu/redact/releases/download/v0.1.3/redact-0.1.3-aarch64-apple-darwin.tar.gz"
  sha256 "bba3a1ab52b9a30e09fc8d6b40197160f157cd9d39cd9b08528a4434ba37596f"
  license "MIT"

  def install
    bin.install "redact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redact --version")
  end
end
