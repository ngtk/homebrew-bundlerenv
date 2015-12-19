class Bundlerenv < Formula
  desc "use Bundler version specified by Gemfile.lock"
  homepage "https://github.com/ngtk/bundlerenv"
  url "https://github.com/ngtk/bundlerenv/archive/v0.2.0.tar.gz"
  sha256 "5af173921e9d6673e97a1cc32a8bf02c2da8770ba546e2dedb0b13c57804be69"

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
