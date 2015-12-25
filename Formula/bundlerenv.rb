class Bundlerenv < Formula
  desc "use Bundler version specified by Gemfile.lock"
  homepage "https://github.com/ngtk/bundlerenv"
  url "https://github.com/ngtk/bundlerenv/archive/v0.3.0.tar.gz"
  sha256 "4a868dbabf0cb1a60f1e7b81d5e0ef0d8e1f65305063fc80b4e3a530c798cc67"

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
