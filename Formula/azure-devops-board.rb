class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.2/azure-devops-board-2.3.2-macos-universal.tar.gz"
      sha256 "80b6561ec6a9a8763a9a35803cf8f5e1fb93a054ba75d140d891570fd5113b0f"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.2/azure-devops-board-2.3.2-macos-universal.tar.gz"
      sha256 "80b6561ec6a9a8763a9a35803cf8f5e1fb93a054ba75d140d891570fd5113b0f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.2/azure-devops-board-2.3.2-linux-x86_64.tar.gz"
      sha256 "1064a2f2b927eb67a47da1b5dfa94d1ac0d0178cf03f5c0ec2f9b713d1e4c77a"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
