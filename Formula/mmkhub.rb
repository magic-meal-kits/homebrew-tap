class Mmkhub < Formula
  desc "Your MMK hub from the terminal: every hub tool as a command, direct uploads"
  homepage "https://github.com/pureugong/mmkhub-releases"
  version "0.1.0-beta.1"

  # This beta is macOS only; Linux comes later.
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/pureugong/mmkhub-releases/releases/download/v0.1.0-beta.1/mmkhub-0.1.0-beta.1-aarch64-apple-darwin.tar.gz"
      sha256 "c8f0f53417c7f814521908a2f6351708ebf583e2625a046c198b0aee0e76aca2"
    end
    on_intel do
      url "https://github.com/pureugong/mmkhub-releases/releases/download/v0.1.0-beta.1/mmkhub-0.1.0-beta.1-x86_64-apple-darwin.tar.gz"
      sha256 "7fcc6a25531db344073d1b699a7b2b3bef2b23212a51ef318bcf8ba19d5fa515"
    end
  end

  def install
    bin.install "mmkhub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mmkhub version")
  end
end
