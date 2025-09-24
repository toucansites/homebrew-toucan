class Toucan < Formula
  desc "Toucan is a static site generator written in Swift"
  homepage "https://github.com/toucansites/toucan"
  version "1.0.0-rc.1"

  if OS.mac?
    url "https://github.com/toucansites/toucan/releases/download/1.0.0-rc.1/toucan-macos-1.0.0.rc.1.zip"
    sha256 "2b72e8e64f51b36ddacf90117f290a92e2d582038dc583ebabd95716a2592aa4"
  elsif OS.linux?
    url "https://github.com/toucansites/toucan/releases/download/1.0.0-rc.1/toucan-linux-1.0.0.rc.1.zip"
    sha256 "00e8fd0f16b0204f5de9904553d3f264a6dc76e02f233af89d608487f6a143b5"
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