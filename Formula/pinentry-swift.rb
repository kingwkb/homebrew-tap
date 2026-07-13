class PinentrySwift < Formula
  desc "Pinentry for GPG on macOS with Touch ID support"
  homepage "https://github.com/kingwkb/pinentry-swift"
  url "https://github.com/kingwkb/pinentry-swift/releases/download/v0.0.3/pinentry-swift-v0.0.3.tar.gz"
  sha256 "4285f04a51bb42ac49e2b148146c419b5f46444d6b614361231082fb562dcb14"
  license "MIT"
  depends_on macos: :monterey

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
