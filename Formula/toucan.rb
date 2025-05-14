class Toucan < Formula
  desc "Toucan is a static site generator written in Swift"
  homepage "https://github.com/toucansites/toucan"
  url "https://github.com/toucansites/toucan/archive/refs/tags/1.0.0-beta.4.tar.gz"
  sha256 "NEEDS_THE_SHA256_of_the_1.0.0-beta.4"
  version "1.0.0-beta.4"

  depends_on xcode: ["16.0", :build]

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"

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