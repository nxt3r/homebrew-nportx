class Nportx < Formula
  desc "Find and kill processes hogging your ports. Instantly."
  homepage "https://github.com/nxt3r/nportx"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nxt3r/nportx/releases/download/v#{version}/nportx-aarch64-apple-darwin.tar.gz"
      sha256 "7A2D23F14832490408F9548660B8771F0E6C9A3647C631EBBB19A4C773A51470"
    else
      url "https://github.com/nxt3r/nportx/releases/download/v#{version}/nportx-x86_64-apple-darwin.tar.gz"
      sha256 "DBF898B01853AE874356C75C2FD4279DAF207AF1C69207F52D89EE1DD8001D23"
    end
  end

  def install
    bin.install "nportx"
  end

  test do
    system "#{bin}/nportx", "--version"
  end
end