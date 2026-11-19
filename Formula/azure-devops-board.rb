class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.6/azure-devops-board-2.3.6-macos-universal.tar.gz"
      sha256 "feffab140775a039db59e86fc94244ee66fe0c872a062caca355ce3a14ca7cd8"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.6/azure-devops-board-2.3.6-macos-universal.tar.gz"
      sha256 "feffab140775a039db59e86fc94244ee66fe0c872a062caca355ce3a14ca7cd8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.6/azure-devops-board-2.3.6-linux-x86_64.tar.gz"
      sha256 "f853572e834b4b6ee4acef3d7a805d12cce5877fad2bfd0d4095ed738cc1e58b"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
