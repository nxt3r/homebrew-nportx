class Nportx < Formula
  desc "Find and kill processes hogging your ports. Instantly."
  homepage "https://github.com/nxt3r/nportx"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxt3r/nportx/releases/download/v#{version}/nportx-aarch64-apple-darwin.tar.gz"
      sha256 "b97b1bd0c8c34e7da7c7e03277fc365d310a572674e6d3e1206282c053756107"
    else
      url "https://github.com/nxt3r/nportx/releases/download/v#{version}/nportx-x86_64-apple-darwin.tar.gz"
      sha256 "3b19aa420c20c2bf749998339f1cf3bcf09d7614f66c986e3ef3219748f14530"
    end
  end

  def install
    bin.install "nportx"
  end

  test do
    system "#{bin}/nportx", "--version"
  end
end
