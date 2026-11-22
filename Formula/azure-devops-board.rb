class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.11/azure-devops-board-2.3.11-macos-universal.tar.gz"
      sha256 "74c5770a927309aaeb8117c4caed88edc8a65fa32e90471c961163ab29f51759"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.11/azure-devops-board-2.3.11-macos-universal.tar.gz"
      sha256 "74c5770a927309aaeb8117c4caed88edc8a65fa32e90471c961163ab29f51759"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.11/azure-devops-board-2.3.11-linux-x86_64.tar.gz"
      sha256 "bda1e5126a2587bf82f6a91800f06d3018f24b2619903c3136307999bc6c9c6a"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
