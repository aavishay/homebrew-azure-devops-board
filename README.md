# homebrew-azure-devops-board

Homebrew tap for **DevOps Board**, the Azure DevOps team kanban desktop app.

```sh
brew tap aavishay/azure-devops-board
brew install --cask azdevops
```

Upgrade with `brew upgrade --cask azdevops`. Remove with `brew uninstall --cask azdevops`; add `--zap` to also delete settings and the local board cache. Sign-in credentials stay in the macOS Keychain until you use **Sign out** in the app.

The cask is updated automatically by the release workflow in [aavishay/azure-devops-board](https://github.com/aavishay/azure-devops-board) whenever a `v*` tag is pushed.
