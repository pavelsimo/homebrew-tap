# typed: false
# frozen_string_literal: true

class Ariel < Formula
  include Language::Python::Virtualenv

  desc "animate Mermaid diagrams as videos with manim"
  homepage "https://pavelsimo.github.io/ariel"
  url "https://files.pythonhosted.org/packages/cd/92/d725674355bb0b76c990bb758ec7c3a58316e3e3935a6355b39e906afc5a/ariel_mermaid-0.1.0.tar.gz"
  sha256 "f404b3ae5ffa7e8d455f151ec9a714e1854dd5ebe2c0d9bfe7b8a0b5413a46d8"
  license "MIT"
  head "https://github.com/pavelsimo/ariel.git", branch: "main"

  depends_on "python@3.11"
  # Native libraries manim needs (manimpango/pycairo build + ffmpeg for video).
  depends_on "cairo"
  depends_on "ffmpeg"
  depends_on "pango"
  depends_on "pkg-config" => :build

  # NOTE: manim's Python resources are not yet listed below. Before the first
  # `brew install`, regenerate the resource stanzas (e.g. `brew update-python-resources`
  # or homebrew-pypi-poet) so the virtualenv can install manim and its deps.

  resource "typer" do
    url "https://files.pythonhosted.org/packages/cd/92/d725674355bb0b76c990bb758ec7c3a58316e3e3935a6355b39e906afc5a/ariel_mermaid-0.1.0.tar.gz"
    sha256 "f404b3ae5ffa7e8d455f151ec9a714e1854dd5ebe2c0d9bfe7b8a0b5413a46d8"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/cd/92/d725674355bb0b76c990bb758ec7c3a58316e3e3935a6355b39e906afc5a/ariel_mermaid-0.1.0.tar.gz"
    sha256 "f404b3ae5ffa7e8d455f151ec9a714e1854dd5ebe2c0d9bfe7b8a0b5413a46d8"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/cd/92/d725674355bb0b76c990bb758ec7c3a58316e3e3935a6355b39e906afc5a/ariel_mermaid-0.1.0.tar.gz"
    sha256 "f404b3ae5ffa7e8d455f151ec9a714e1854dd5ebe2c0d9bfe7b8a0b5413a46d8"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/cd/92/d725674355bb0b76c990bb758ec7c3a58316e3e3935a6355b39e906afc5a/ariel_mermaid-0.1.0.tar.gz"
    sha256 "f404b3ae5ffa7e8d455f151ec9a714e1854dd5ebe2c0d9bfe7b8a0b5413a46d8"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/cd/92/d725674355bb0b76c990bb758ec7c3a58316e3e3935a6355b39e906afc5a/ariel_mermaid-0.1.0.tar.gz"
    sha256 "f404b3ae5ffa7e8d455f151ec9a714e1854dd5ebe2c0d9bfe7b8a0b5413a46d8"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/cd/92/d725674355bb0b76c990bb758ec7c3a58316e3e3935a6355b39e906afc5a/ariel_mermaid-0.1.0.tar.gz"
    sha256 "f404b3ae5ffa7e8d455f151ec9a714e1854dd5ebe2c0d9bfe7b8a0b5413a46d8"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/cd/92/d725674355bb0b76c990bb758ec7c3a58316e3e3935a6355b39e906afc5a/ariel_mermaid-0.1.0.tar.gz"
    sha256 "f404b3ae5ffa7e8d455f151ec9a714e1854dd5ebe2c0d9bfe7b8a0b5413a46d8"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ariel --version")
    assert_match version.to_s, shell_output("#{bin}/ariel version")
  end
end
