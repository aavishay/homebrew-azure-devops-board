class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.1.0/azure-devops-board-2.1.0-macos-universal.tar.gz"
      sha256 "676fdb3b1839814af7752b3addb14ccc979b79522204e0c97930c2307b97d635"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.1.0/azure-devops-board-2.1.0-macos-universal.tar.gz"
      sha256 "676fdb3b1839814af7752b3addb14ccc979b79522204e0c97930c2307b97d635"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.1.0/azure-devops-board-2.1.0-linux-x86_64.tar.gz"
      sha256 "3609436b4030d03a6ddcf7bbc113d40c9f2f28d5cac092e003cf2c40e698c243"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
