# homebrew-azure-devops-board

Homebrew tap for **Azure DevOps Board**, a team kanban board for Azure DevOps that runs in your browser. It works on macOS and Linux (x86-64).

```sh
brew tap aavishay/azure-devops-board
brew trust aavishay/azure-devops-board   # Homebrew 7+ asks you to trust third-party taps
brew install azure-devops-board
```

Then run `azure-devops-board` and the board opens in your default browser. Upgrade with `brew upgrade azure-devops-board`.

If you have the old desktop app (the cask), remove it first with `brew uninstall --cask azure-devops-board`. Your settings, saved sign-in and board history carry over.

Remove with `brew uninstall azure-devops-board`. Settings and the local board cache stay in `~/Library/Application Support/com.au10tix.devopsboard` (macOS) or `~/.config/com.au10tix.devopsboard` and `~/.local/share/com.au10tix.devopsboard` (Linux). Sign-in credentials stay in the OS keychain until you use **Sign out** on the board.

The formula is updated automatically by the release workflow in [aavishay/azure-devops-board](https://github.com/aavishay/azure-devops-board) whenever a `v*` tag is pushed.
