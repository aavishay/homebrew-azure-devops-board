class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.1/azure-devops-board-2.3.1-macos-universal.tar.gz"
      sha256 "88cc2128cafd24bf851f51f9404478a1c4ddcf4481a24d0d9a78aaa6e715c999"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.1/azure-devops-board-2.3.1-macos-universal.tar.gz"
      sha256 "88cc2128cafd24bf851f51f9404478a1c4ddcf4481a24d0d9a78aaa6e715c999"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v2.3.1/azure-devops-board-2.3.1-linux-x86_64.tar.gz"
      sha256 "333726f3a68396f38a99fe44d891740bc19952f08fc196b2be61cd01650532a3"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
