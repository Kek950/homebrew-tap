class SnakeGame < Formula
  desc "Native cross-platform Snake game in C++ (Win32 & X11)"
  homepage "https://github.com/Kek950/snake-game"
  url "https://github.com/Kek950/snake-game/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6387166c836df8ba3ac0bb1d95c416d6d47eaf0cfd9ef64e3ad41c53d9d79a9a"
  license "MIT"

  depends_on "libx11"

  def install
    system ENV.cxx, "-O2", "-std=c++11", "main.cpp", "-lX11", "-o", "SnakeGame"
    bin.install "SnakeGame" => "snake-game"
  end

  test do
    assert_predicate bin/"snake-game", :exist?
  end
end
