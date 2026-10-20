cask "azdevops" do
  version "1.0.0"
  sha256 :no_check # replaced with the real checksum by the release workflow

  url "https://github.com/aavishay/azure-devops-board/releases/download/v#{version}/azdevops-#{version}-macos-universal.dmg"
  name "Azure DevOps Board"
  desc "Azure DevOps team kanban board"
  homepage "https://github.com/aavishay/azure-devops-board"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Azure DevOps Board.app"

  # The app is not notarized; clear the quarantine flag so it opens without the Gatekeeper prompt.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Azure DevOps Board.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.au10tix.devopsboard",
    "~/Library/Caches/com.au10tix.devopsboard",
    "~/Library/WebKit/com.au10tix.devopsboard",
  ]
end
