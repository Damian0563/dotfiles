export ZSH="$HOME/.oh-my-zsh"
export PATH="/opt/nvim/bin:$PATH"
ZSH_THEME="bira"
DISABLE_AUTO_TITLE="true"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)
HIST_STAMPS="yyyy-mm-dd"
source $ZSH/oh-my-zsh.sh
export PATH=/home/damian/.opencode/bin:$PATH
export PATH=/home/damian/Desktop/CloudDrop/clouddrop:$PATH
export PATH="/home/damian/Desktop/Matlab/bin:$PATH"
alias matlab='/home/damian/matlab/bin/matlab'
neofetch --ascii_distro debian --colors 3 7 3 8 8 7
echo -e "\e[1;33mWelcome back, Damian!\e[0m"
echo -e "\e[0;90m$(date +'%A, %d %B %Y')\e[0m"
if [ -f '/home/damian/google-cloud-sdk/path.zsh.inc' ]; then . '/home/damian/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/home/damian/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/damian/google-cloud-sdk/completion.zsh.inc'; fi
