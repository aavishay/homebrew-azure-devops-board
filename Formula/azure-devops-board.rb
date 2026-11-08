class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.0/azure-devops-board-2.3.0-macos-universal.tar.gz"
      sha256 "d0753c5eb1f1de4c26f0721fb60561d77985eef70a933062db314c5ad44f83c3"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.0/azure-devops-board-2.3.0-macos-universal.tar.gz"
      sha256 "d0753c5eb1f1de4c26f0721fb60561d77985eef70a933062db314c5ad44f83c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.0/azure-devops-board-2.3.0-linux-x86_64.tar.gz"
      sha256 "1f06d3a28ef11b2f2727b67199ccb068f1b0aa18cba0531de5179a04ac8460cd"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
