class AzureDevopsBoard < Formula
  desc "Azure DevOps team board that runs in your browser"
  homepage "https://github.com/aavishay/azure-devops-board"
  version "2.0.0"

  # One universal binary serves both Mac architectures.
  on_macos do
    on_arm do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v#{version}/azure-devops-board-#{version}-macos-universal.tar.gz"
      sha256 "15716b6d7d676f9863bb368828943961143366e8f5deefa11d90ee68de1186c4"
    end
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v#{version}/azure-devops-board-#{version}-macos-universal.tar.gz"
      sha256 "15716b6d7d676f9863bb368828943961143366e8f5deefa11d90ee68de1186c4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/aavishay/azure-devops-board/releases/download/v#{version}/azure-devops-board-#{version}-linux-x86_64.tar.gz"
      sha256 "4129585fab1525eca57b44ce7fbca4eba510d3909bca528667136b4e26698073"
    end
  end

  def install
    bin.install "azure-devops-board"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/azure-devops-board --version")
  end
end
