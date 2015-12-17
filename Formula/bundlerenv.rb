class Bundlerenv < Formula
  desc "use Bundler version specified by Gemfile.lock"
  homepage "https://github.com/ngtk/bundlerenv"
  url "https://github.com/ngtk/bundlerenv/archive/v0.1.0.tar.gz"
  sha256 "3767ba061d29a104c3b81f5100c4140c1fcb1c646787008774109062d7297d19"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  def caveats
    <<-EOS.undent
    To enable shims and autocompletion add to your profile:
      if which bundle > /dev/null; then eval "$(bundlerenv init -)"; fi
    EOS
  end
end
