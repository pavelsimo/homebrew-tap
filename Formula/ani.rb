class Ani < Formula
  desc "Browse and search AniList anime from your terminal"
  homepage "https://github.com/pavelsimo/ani"
  license "MIT"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/ani/releases/download/v0.3.0/ani_darwin_arm64.tar.gz"
      sha256 "a05432f418abd1dfe24e46417988f3138130cc85c4a81f092e76cd3f4c9ed71d"
    else
      url "https://github.com/pavelsimo/ani/releases/download/v0.3.0/ani_darwin_amd64.tar.gz"
      sha256 "debb173bd46dc8a3d701c15fe5f5ae3ee2732bcb28b2924af62245ba0c56be6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pavelsimo/ani/releases/download/v0.3.0/ani_linux_arm64.tar.gz"
      sha256 "a435411a6248be9f092b9be2bebb4d67faab0d9aeb239d5f102e5b907cd7cc8a"
    else
      url "https://github.com/pavelsimo/ani/releases/download/v0.3.0/ani_linux_amd64.tar.gz"
      sha256 "54c672ac8ab42a4a8e8ff1f5fde6d63f25f425ed74a3b79b5cafc6d8c731bf16"
    end
  end

  def install
    bin.install "ani"
  end

  test do
    system "#{bin}/ani", "version"
  end
end
