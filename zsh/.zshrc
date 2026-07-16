export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/nvim/bin:$PATH"

ZSH_DOTFILES="${ZSH_DOTFILES:-$HOME/Desktop/dotfiles/dotfiles/zsh}"

# Catppuccin Mocha (matches ~/.tmux.conf palette)
ZSH_THEME="catppuccin"
CATPPUCCIN_FLAVOR="mocha"
CATPPUCCIN_SHOW_TIME=true
DISABLE_AUTO_TITLE="true"

# Must load before oh-my-zsh enables zsh-syntax-highlighting
source "$ZSH_DOTFILES/catppuccin_mocha-zsh-syntax-highlighting.zsh"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
HIST_STAMPS="yyyy-mm-dd"
source $ZSH/oh-my-zsh.sh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#585b70"
export PATH=/home/damian/.opencode/bin:$PATH
export PATH=/home/damian/Desktop/CloudDrop/clouddrop:$PATH
export PATH="/home/damian/Desktop/Matlab/bin:$PATH"
export PATH="/bin/act:$PATH"
export PATH=$PATH:$(go env GOPATH)/bin
alias matlab='/home/damian/matlab/bin/matlab'
neofetch --ascii_distro debian --colors 4 2 5 8 8 4
echo -e "\e[38;2;137;180;250;1mWelcome back, Damian!\e[0m"
echo -e "\e[38;2;166;173;200m$(date +'%A, %d %B %Y')\e[0m"
if [ -f '/home/damian/google-cloud-sdk/path.zsh.inc' ]; then . '/home/damian/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/home/damian/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/damian/google-cloud-sdk/completion.zsh.inc'; fi

# pnpm
export PNPM_HOME="/home/damian/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end

export PATH="$HOME/.local/bin:$PATH"
