# MojoFlow releases

The signed installers and packages of **MojoFlow**, push-to-talk dictation that runs entirely on
your computer, one GitHub release per version. The source lives in a private repository; this one
exists so that package managers and people can download every release without an account.

## Install

```powershell
winget install MojoUp.MojoFlow                      # Windows
```

```bash
curl -fsSL https://api.mojoup.com.au/api/releases/mojoflow/install.sh | bash   # Linux, for your user
sudo apt install ./mojoflow_<version>_amd64.deb     # Debian and Ubuntu, from the latest release
yay -S mojoflow-bin                                 # Arch Linux (AUR)
```

Or download from the [latest release](https://github.com/Mojo-Up/mojoflow-releases/releases/latest)
or the [Mojo Up portal](https://portal.mojoup.com.au/releases/mojoflow). Every release carries a
`SHA256SUMS` over its files. Windows builds are signed with Azure Trusted Signing (signer "Mojo Up").
A macOS build is in the works; when it ships it will be notarised and `brew install --cask mojo-up/tap/mojoflow`.

MojoFlow keeps itself up to date: it checks the Mojo Up portal once a day and downloads the new
version from here. Nothing you say leaves your computer, and nothing about you is sent with the check.

MojoFlow is free to use and not open source: see [LICENSE](LICENSE). Mojo Up's services are under
the [terms of service](https://mojoup.ai/terms).

Documentation: <https://docs.mojoup.com.au/mojoflow>. Release notes: <https://docs.mojoup.com.au/release-notes/mojoflow>.

## Issues

Something wrong with an install or an update? [Open an issue](https://github.com/Mojo-Up/mojoflow-releases/issues).
