class Toucan < Formula
  desc "Toucan is a static site generator written in Swift"
  homepage "https://github.com/toucansites/toucan"
  version "1.0.0-beta.4"

  if OS.mac?
    url "https://github.com/toucansites/toucan/archive/refs/tags/toucan-macos-1.0.0.beta.4.zip"
    sha256 "mac_sha256_here"
  elsif OS.linux?
    url "https://github.com/toucansites/toucan/archive/refs/tags/toucan-linux-1.0.0.beta.4.zip"
    sha256 "linux_sha256_here"
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