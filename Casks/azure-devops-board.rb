cask "azure-devops-board" do
  version "1.1.0"
  sha256 "582de0ac14aa14639b439fdbcb4a384978db7963a05869e06789a81993c368db"

  url "https://github.com/aavishay/azure-devops-board/releases/download/v#{version}/azure-devops-board-#{version}-macos-universal.dmg"
  name "Azure DevOps Board"
  desc "Azure DevOps team kanban board"
  homepage "https://github.com/aavishay/azure-devops-board"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Azure DevOps Board.app"

  # The app is not notarized; clear the quarantine flag so it opens without the Gatekeeper prompt.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/Azure DevOps Board.app"],
        writable_paths: ["Azure DevOps Board.app"],
        writable_base:  :appdir
  end

  zap trash: [
    "~/Library/Application Support/com.au10tix.devopsboard",
    "~/Library/Caches/com.au10tix.devopsboard",
    "~/Library/WebKit/com.au10tix.devopsboard",
  ]
end
