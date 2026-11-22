class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.9/azure-devops-board-2.3.9-macos-universal.tar.gz"
      sha256 "307888517a27b879e9c3df3aa65aa81b330b8aaba68b42a8825d3bc8a028274a"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.9/azure-devops-board-2.3.9-macos-universal.tar.gz"
      sha256 "307888517a27b879e9c3df3aa65aa81b330b8aaba68b42a8825d3bc8a028274a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.9/azure-devops-board-2.3.9-linux-x86_64.tar.gz"
      sha256 "ddd4453e2abce0c6ae2a4d2fe717d1db5a4a983436c50b927fb386f65c477a3e"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
