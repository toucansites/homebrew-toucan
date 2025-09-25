class Toucan < Formula
  desc "Toucan is a static site generator written in Swift."
  homepage "https://github.com/toucansites/toucan"
  version "1.0.0.rc.1"

  if OS.mac?
    url "https://github.com/toucansites/toucan/releases/download/1.0.0-rc.1/toucan-macos-1.0.0.rc.1.zip"
    sha256 "ee3b9150340a11e2c211ae702b0b18666360766105595dd8dab5065caf1db416"
  elsif OS.linux?
    url "https://github.com/toucansites/toucan/releases/download/1.0.0-rc.1/toucan-linux-1.0.0.rc.1.zip"
    sha256 "97c2c530ecb239bebe5be169bcbe041dd4789790f590045e1a5957c03e72c1e3"
  end

  def install
    bin.install "toucan"
    bin.install "toucan-init"
    bin.install "toucan-generate"
    bin.install "toucan-serve"
    bin.install "toucan-watch"
  end

  test do
    assert_match "Usage", shell_output("\#{bin}/toucan --help")
  end
end
