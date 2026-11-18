class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.4/azure-devops-board-2.3.4-macos-universal.tar.gz"
      sha256 "d47516ff4dd60e1fe853d75a16a46b918dc5f349322fd4ef39986adf2dd51033"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.4/azure-devops-board-2.3.4-macos-universal.tar.gz"
      sha256 "d47516ff4dd60e1fe853d75a16a46b918dc5f349322fd4ef39986adf2dd51033"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.4/azure-devops-board-2.3.4-linux-x86_64.tar.gz"
      sha256 "dd8e82db3bff657438ce53573887c2381eb9cffdd6d40078bf36c706724bf7de"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
