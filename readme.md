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
git clone https://github.com/zpm-zsh/clipboard.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/clipboard
```
