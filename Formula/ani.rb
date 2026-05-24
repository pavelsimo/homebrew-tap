class Ani < Formula
  desc "Browse and search AniList anime from your terminal"
  homepage "https://github.com/pavelsimo/ani"
  license "MIT"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/ani/releases/download/v0.4.0/ani_darwin_arm64.tar.gz"
      sha256 "79b75c6fd12c1a68be6c9fe5e5ede2a37ec4f18ca3861b16d630e7d62014eee1"
    else
      url "https://github.com/pavelsimo/ani/releases/download/v0.4.0/ani_darwin_amd64.tar.gz"
      sha256 "b8568227192018d9eb732d9a4dbe42fe1377cd0a317ee6bd954ed5f7deb66b29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/ani/releases/download/v0.4.0/ani_linux_arm64.tar.gz"
      sha256 "720abf05269c9443996dfb59ef19b89d662e2365b0e4a3c15074ab10c2fc09fa"
    else
      url "https://github.com/pavelsimo/ani/releases/download/v0.4.0/ani_linux_amd64.tar.gz"
      sha256 "d3cbd5aa24027f5e11697f012f7e3af2d2f087bcd2928e12470c362694329631"
    end
  end

  def install
    bin.install "ani"
  end

  test do
    system "#{bin}/ani", "version"
  end
end
