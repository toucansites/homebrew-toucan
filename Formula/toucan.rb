class Toucan < Formula
  desc "Toucan is a static site generator written in Swift"
  homepage "https://github.com/toucansites/toucan"
  version "1.0.0-beta.6"

  if OS.mac?
    url "https://github.com/toucansites/toucan/releases/download/1.0.0-beta.6/toucan-macos-1.0.0.beta.6.zip"
    sha256 "12863ce9d58d0b05cfe564c7ee89258569dac4c3221b48d5f761df7994bc0f66"
  elsif OS.linux?
    url "https://github.com/toucansites/toucan/releases/download/1.0.0-beta.6/toucan-linux-1.0.0.beta.6.zip"
    sha256 "f80869892b4c23b46bae2d923b9dee6a0a03293ab4dedd56a6100fb14d696eea"
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