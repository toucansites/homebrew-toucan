class Toucan < Formula
  desc "Toucan is a static site generator written in Swift"
  homepage "https://github.com/toucansites/toucan"
  version "1.0.0-beta.4"

  if OS.mac?
    url "https://github.com/toucansites/toucan/releases/download/1.0.0-beta.4/toucan-macos-1.0.0.beta.4.zip"
    sha256 "a1bf2cb273aafd11c8ecc14fa3fb910216403935066b2ab43c1b050273bd1b89"
  elsif OS.linux?
    url "https://github.com/toucansites/toucan/releases/download/1.0.0-beta.4/toucan-linux-1.0.0.beta.4.zip"
    sha256 "b985329227f10e5c11f85531aef4d4404d097bd0f1346bbffdee956b3c13df82"
  end

  def install
    bin.install ".build/release/toucan"
    bin.install ".build/release/toucan-generate"
    bin.install ".build/release/toucan-init"
    bin.install ".build/release/toucan-serve"
    bin.install ".build/release/toucan-watch"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/toucan --help")
  end
end