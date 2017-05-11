class Heroku < Formula
  desc "Everything you need to get started with Heroku"
  homepage "https://cli.heroku.com"
  url "https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-v6.6.5-aa70c9d-darwin-x64.tar.xz"
  version "6.6.5-aa70c9d"
  sha256 "4df6ca02e89e8de6b061b46e07ceac491320a55cded32b77de3045d271f49149"

  bottle :unneeded

  depends_on :arch => :x86_64

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/heroku"
  end

  test do
    system bin/"heroku", "version"
  end
end
