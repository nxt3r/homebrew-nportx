class Nportx < Formula
  desc "Find and kill processes hogging your ports. Instantly."
  homepage "https://github.com/nxt3r/nportx"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxt3r/nportx/releases/download/v#{version}/nportx-aarch64-apple-darwin.tar.gz"
      sha256 "51bd529477935e649844aacebd06be816cbef42cd6238fd633de22717aa94df8"
    else
      url "https://github.com/nxt3r/nportx/releases/download/v#{version}/nportx-x86_64-apple-darwin.tar.gz"
      sha256 "2d5d98ebba0f95880cb99ec64b7a538073fd5011b40edc32b1eb7f4a581368bd"
    end
  end

  def install
    bin.install "nportx"
  end

  test do
    system "#{bin}/nportx", "--version"
  end
end
