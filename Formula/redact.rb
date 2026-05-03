class Redact < Formula
  desc "PII-filtering CLI that intercepts AI agent query commands and redacts sensitive data"
  homepage "https://github.com/GaaraZhu/redact"
  url "https://github.com/GaaraZhu/redact/releases/download/v0.1.4/redact-0.1.4-aarch64-apple-darwin.tar.gz"
  sha256 "6973311928955231f1e3301056858dfa888e107736a65aa5bba53540b50e9ad6"
  license "MIT"

  def install
    bin.install "redact"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redact --version")
  end
end
