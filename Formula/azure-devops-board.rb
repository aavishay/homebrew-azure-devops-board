class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.7/azure-devops-board-2.3.7-macos-universal.tar.gz"
      sha256 "96bc73c8187a2874aee5bd22ae387616c3ab80915adf774d21df2ebafb8d7614"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.7/azure-devops-board-2.3.7-macos-universal.tar.gz"
      sha256 "96bc73c8187a2874aee5bd22ae387616c3ab80915adf774d21df2ebafb8d7614"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.7/azure-devops-board-2.3.7-linux-x86_64.tar.gz"
      sha256 "e0eb968cc7351ab1e899ef550cba4eae558f0d4e55b8405b326da48684031422"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
