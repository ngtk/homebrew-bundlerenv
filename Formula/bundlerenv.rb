class Bundlerenv < Formula
  desc "use Bundler version specified by Gemfile.lock"
  homepage "https://github.com/ngtk/bundlerenv"
  url "https://github.com/ngtk/bundlerenv/archive/v0.3.1.tar.gz"
  sha256 "7c9a914244e8bfc96d3605218e4d531c7160b309d93b194585a4b0f668d23a1a"

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
