class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.12/azure-devops-board-2.3.12-macos-universal.tar.gz"
      sha256 "7945b21f7bc8986130a40cbcff755fc4a293733554e61c41ecf602c50677673f"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.12/azure-devops-board-2.3.12-macos-universal.tar.gz"
      sha256 "7945b21f7bc8986130a40cbcff755fc4a293733554e61c41ecf602c50677673f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.12/azure-devops-board-2.3.12-linux-x86_64.tar.gz"
      sha256 "83b0f25d5136a686017c5e44368c9cd155d3d93ec33449166047fc9e3afa6007"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
