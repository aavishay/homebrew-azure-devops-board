class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.2.0/azure-devops-board-2.2.0-macos-universal.tar.gz"
      sha256 "ccdcebaea2e27cd2bc0e7b4592943a024218e831a8b3363b6a19b8f8e4d4d395"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.2.0/azure-devops-board-2.2.0-macos-universal.tar.gz"
      sha256 "ccdcebaea2e27cd2bc0e7b4592943a024218e831a8b3363b6a19b8f8e4d4d395"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.2.0/azure-devops-board-2.2.0-linux-x86_64.tar.gz"
      sha256 "8cdc718d68ec78e81f4db7b703ff2cf1a606675df93a83226e9c1fc09c2f7d8f"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
