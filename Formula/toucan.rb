class Toucan < Formula
  desc "Toucan is a static site generator written in Swift"
  homepage "https://github.com/toucansites/toucan"
  version "1.0.0-beta.5"

  if OS.mac?
    url "https://github.com/toucansites/toucan/releases/download/1.0.0-beta.5/toucan-macos-1.0.0.beta.5.zip"
    sha256 "c35d16f30e0acd254213e82c7bd49c52e4df3b5983f4c225b198bd72da02640a"
  elsif OS.linux?
    url "https://github.com/toucansites/toucan/releases/download/1.0.0-beta.5/toucan-linux-1.0.0.beta.5.zip"
    sha256 "3b71aefd779205a1df888c9433785d854a62fa3df6ed7ac43204a71b9447bcea"
  end

  def install
    bin.install "toucan"
    bin.install "toucan-init"
    bin.install "toucan-generate"
    bin.install "toucan-serve"
    bin.install "toucan-watch"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/toucan --help")
  end
end