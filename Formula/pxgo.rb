class Pxgo < Formula
  desc "HTTP/HTTPS proxy with NTLM and Kerberos authentication"
  homepage "https://pavelsimo.github.io/pxgo"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/pxgo/releases/download/v0.4.0/pxgo_darwin_arm64.tar.gz"
      sha256 "9501ed88423f5df56b0a824a32e1c724dfc66671cb7c2f1045a856ecbd6f14a4"
    else
      url "https://github.com/pavelsimo/pxgo/releases/download/v0.4.0/pxgo_darwin_amd64.tar.gz"
      sha256 "155db67dc1a2499c770d20873fb9a103b0f734a40039429fc17b82d6d3e7c0b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/pxgo/releases/download/v0.4.0/pxgo_linux_arm64.tar.gz"
      sha256 "a806f78f398f363b8080aafa478686e841ba5830c7befae82fbb25cb56abded5"
    else
      url "https://github.com/pavelsimo/pxgo/releases/download/v0.4.0/pxgo_linux_amd64.tar.gz"
      sha256 "1506fe39fcb8068b7118fcec068365d5928b777c4c28382bab89a18bfd1a76a7"
    end
  end

  def install
    bin.install "pxgo"
  end

  test do
    system "#{bin}/pxgo", "--version"
  end
end
