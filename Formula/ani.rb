class Ani < Formula
  desc "Browse and search AniList anime from your terminal"
  homepage "https://github.com/pavelsimo/ani"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/ani/releases/download/v0.1.0/ani_darwin_arm64.tar.gz"
      sha256 "36bb49398a4afbbb51d87f17faec295155ea1d389c9926c34114529f9c076e98"
    else
      url "https://github.com/pavelsimo/ani/releases/download/v0.1.0/ani_darwin_amd64.tar.gz"
      sha256 "310ae198d13f675779d52ad7de5efc4d6fbc1dd00564488a0e900c22e066de8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/ani/releases/download/v0.1.0/ani_linux_arm64.tar.gz"
      sha256 "db27a09e93b2471d36cfe8711a43db7972d29dd866d4cbb9c6b580c0dfdf3c14"
    else
      url "https://github.com/pavelsimo/ani/releases/download/v0.1.0/ani_linux_amd64.tar.gz"
      sha256 "f728846a6b279fb64815299e1912ab52024a0f4da3fb0418f2bd73a9f064acfa"
    end
  end

  def install
    bin.install "ani"
  end

  test do
    system "#{bin}/ani", "version"
  end
end
