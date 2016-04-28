class Heroku < Formula
  desc "CLI interface to the Heroku Platform"
  homepage "https://toolbelt.heroku.com/"
  url "https://cli-assets.heroku.com/branches/dev/5.0.0-7046018/heroku-v5.0.0-7046018-darwin-amd64.tar.xz"
  sha256 "df834821f3ab2182df14a8eb4142a6002a317f9d6ec1afb252f3f657be2c3dc6"
  head "https://github.com/heroku/cli.git"

  bottle :unneeded

  depends_on :arch => :x86_64

  def install
    libexec.install Dir["*"]
    bin.install "bin/heroku"
  end

  test do
    system "#{bin}/heroku", "version"
  end
end
