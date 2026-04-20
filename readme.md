## Configuration files

### Tmux setup

First install tpm:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Second, start any tmux session and press `[prefix]-I` to install packages

### zsh setup

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/zpm-zsh/clipboard.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/clipboard
```

### git setup

```bash
git config --global core.excludesFile ~/.config/git/ignore
```

### `$TERM` setup

Environment variable `TERM` represents the color scheme used the Tmux session. The tmux configuration set it to be `tmux-256color`, to ensure the compatibility of different programs. But for this to work, make sure the correct `.terminfo` exists for `tmux-256color`:

```bash
infocmp -x tmux-256color
```
See [this instruction](https://gist.github.com/joshuarli/247018f8617e6715e1e0b5fd2d39bb6c) to create one if it doesn't exist.
