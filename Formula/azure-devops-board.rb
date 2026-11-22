class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.8/azure-devops-board-2.3.8-macos-universal.tar.gz"
      sha256 "a188f350a399565636f6d8c923973e549810166bdad730a2394842319c9e0898"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.8/azure-devops-board-2.3.8-macos-universal.tar.gz"
      sha256 "a188f350a399565636f6d8c923973e549810166bdad730a2394842319c9e0898"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.8/azure-devops-board-2.3.8-linux-x86_64.tar.gz"
      sha256 "fd8acb7215cbaf547cfb8113f091d3675c35d4a883a2933c1194cb67d2707dfb"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
