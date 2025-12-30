class PinentrySwift < Formula
  desc "Pinentry for GPG on macOS with Touch ID support"
  homepage "https://github.com/kingwkb/pinentry-swift"
  url "https://github.com/kingwkb/pinentry-swift/releases/download/v0.0.2/pinentry-swift-v0.0.2.tar.gz"
  sha256 "449fc121bd9f342a291f40620a103448010248b42b54020de4c00237411c5dd4"
  license "MIT"
  depends_on :macos => :monterey

  def install
    bin.install "pinentry-swift"
  end

  def caveats
    <<~EOS
      Installation successful!
      
      To enable this pinentry, ensure your ~/.gnupg/gpg-agent.conf contains:
        pinentry-program #{HOMEBREW_PREFIX}/bin/pinentry-swift

      Then, restart the gpg-agent to apply changes:
        gpgconf --kill gpg-agent
    EOS
  end
end