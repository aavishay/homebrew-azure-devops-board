class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.10/azure-devops-board-2.3.10-macos-universal.tar.gz"
      sha256 "5a90273761ff9f7135a78f11b96c136d5e165f4065aaaf97bd08f2693ba3e71e"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.10/azure-devops-board-2.3.10-macos-universal.tar.gz"
      sha256 "5a90273761ff9f7135a78f11b96c136d5e165f4065aaaf97bd08f2693ba3e71e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.10/azure-devops-board-2.3.10-linux-x86_64.tar.gz"
      sha256 "12d5a9c985554269257b48fd04e31fb58baf0b7e2e188f519f10b4d6e8678aa4"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
