class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.5/azure-devops-board-2.3.5-macos-universal.tar.gz"
      sha256 "05fe7a951db3e1eb9896323c01f3f02d92bbce686618ae72ceae0aeeee1a35ff"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.5/azure-devops-board-2.3.5-macos-universal.tar.gz"
      sha256 "05fe7a951db3e1eb9896323c01f3f02d92bbce686618ae72ceae0aeeee1a35ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.5/azure-devops-board-2.3.5-linux-x86_64.tar.gz"
      sha256 "6107b5fd82b911dbdb3d63cae76d85eae8f22e554c733ac795e5ac3eaa05be8c"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
