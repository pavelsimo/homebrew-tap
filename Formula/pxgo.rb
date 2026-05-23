class Pxgo < Formula
  desc "HTTP/HTTPS proxy with NTLM and Kerberos authentication"
  homepage "https://pavelsimo.github.io/pxgo"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/pxgo/releases/download/v0.3.0/pxgo_darwin_arm64.tar.gz"
      sha256 "318498f0558dbd2c7c0704d61acd6dbc992af17548477da8a58ee3b4e1d8e19b"
    else
      url "https://github.com/pavelsimo/pxgo/releases/download/v0.3.0/pxgo_darwin_amd64.tar.gz"
      sha256 "ff648e282f21fd20bf0bc8c2afaaa4bffc32dbbb55ab051e1e2d865c8e387977"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/pxgo/releases/download/v0.3.0/pxgo_linux_arm64.tar.gz"
      sha256 "75b50a8d7b084548ddd4f6b6678f8fb9ac854b5356fe7fe2b06aebb7fb574a39"
    else
      url "https://github.com/pavelsimo/pxgo/releases/download/v0.3.0/pxgo_linux_amd64.tar.gz"
      sha256 "65b0c2fe353223cc01611f21bc61e8a1120872e509111b3139ba574de89dab4f"
    end
  end

  def install
    bin.install "pxgo"
  end

  test do
    system "#{bin}/pxgo", "--version"
  end
end
