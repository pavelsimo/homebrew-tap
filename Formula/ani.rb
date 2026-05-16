class Ani < Formula
  desc "Browse and search AniList anime from your terminal"
  homepage "https://github.com/pavelsimo/ani"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/ani/releases/download/v0.2.0/ani_darwin_arm64.tar.gz"
      sha256 "13272dbd33e2857787b8d82bb4338160cb5ac8ee84ae813710b283ca191f4817"
    else
      url "https://github.com/pavelsimo/ani/releases/download/v0.2.0/ani_darwin_amd64.tar.gz"
      sha256 "c54a9eaef5bf0e63f5b2eea2ca980f1e241d83e8381e4a4303de68c4ce897c8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/ani/releases/download/v0.2.0/ani_linux_arm64.tar.gz"
      sha256 "db26f99ed29f36fad949b2376e0a0f7acf69f1915d7293c235909b17a9f2729b"
    else
      url "https://github.com/pavelsimo/ani/releases/download/v0.2.0/ani_linux_amd64.tar.gz"
      sha256 "b581b6236c5fb6474caa6406b983cd96fa79d7ed6ebf819d7eeee1c852116168"
    end
  end

  def install
    bin.install "ani"
  end

  test do
    system "#{bin}/ani", "version"
  end
end
