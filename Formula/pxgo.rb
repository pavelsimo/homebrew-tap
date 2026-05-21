class Pxgo < Formula
  desc "HTTP/HTTPS proxy with NTLM and Kerberos authentication"
  homepage "https://pavelsimo.github.io/pxgo"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/pxgo/releases/download/v0.2.0/pxgo_darwin_arm64.tar.gz"
      sha256 "699176969b2ef6229cb261de64b53e6a8a303cb371b36e5f7e8c0346013ae2ec"
    else
      url "https://github.com/pavelsimo/pxgo/releases/download/v0.2.0/pxgo_darwin_amd64.tar.gz"
      sha256 "5b98904fb1bb9fe2c67610064e662b34aea1201f74db161c71faadf6dbb30a29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/pxgo/releases/download/v0.2.0/pxgo_linux_arm64.tar.gz"
      sha256 "846019e34ffaeec2826ba6ebc046eff81f418b347f6c5f3df62466c9ebdba76f"
    else
      url "https://github.com/pavelsimo/pxgo/releases/download/v0.2.0/pxgo_linux_amd64.tar.gz"
      sha256 "1e53940dc7a683cc448df653c134e5acc6ea2794ec154c1de004c2a0d663cb68"
    end
  end

  def install
    bin.install "pxgo"
  end

  test do
    system "#{bin}/pxgo", "--version"
  end
end
