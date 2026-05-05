class Wtmux < Formula
  desc "Coordinated git worktrees across sibling repos for AI coding agents"
  homepage "https://github.com/OysterD3/wtmux"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OysterD3/wtmux/releases/download/v0.5.0/wtmux-v0.5.0-darwin-arm64.tar.gz"
      sha256 "cc92f9e1a271017c0cd2fd8c702618e7e24e27197381e01394195f0d15e17605"
    else
      url "https://github.com/OysterD3/wtmux/releases/download/v0.5.0/wtmux-v0.5.0-darwin-amd64.tar.gz"
      sha256 "832e77937c26dbce15eb133e457295f1939b115d9220ab2bb36d0f37a1fc183d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OysterD3/wtmux/releases/download/v0.5.0/wtmux-v0.5.0-linux-arm64.tar.gz"
      sha256 "74c5d6df5b8771e1628c00b23c0bb7f130073e99b99b7b26674acefdff4ae124"
    else
      url "https://github.com/OysterD3/wtmux/releases/download/v0.5.0/wtmux-v0.5.0-linux-amd64.tar.gz"
      sha256 "f532631aca2de184f7a9400f105bbbe477f6d1c7c92b31f3e547432008b139ec"
    end
  end

  def install
    bin.install Dir["wtmux-*"].first => "wtmux"
  end

  test do
    system "#{bin}/wtmux", "--version"
  end
end
