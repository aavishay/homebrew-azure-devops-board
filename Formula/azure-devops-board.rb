class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.3/azure-devops-board-2.3.3-macos-universal.tar.gz"
      sha256 "d6ce8d151247ffb069e3659cd0b754c0dc120eb202fad394cb6116ee26550293"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.3/azure-devops-board-2.3.3-macos-universal.tar.gz"
      sha256 "d6ce8d151247ffb069e3659cd0b754c0dc120eb202fad394cb6116ee26550293"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.3/azure-devops-board-2.3.3-linux-x86_64.tar.gz"
      sha256 "9a459ae4105072bde0c83e2524af68d6d1f1e0358f744c75dc7480caa1c23401"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
