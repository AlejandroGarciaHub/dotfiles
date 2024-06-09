# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


eval "$(rbenv init - zsh)"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/mambaforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/mambaforge/base/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/mamba.sh" ]; then
    . "/opt/homebrew/Caskroom/mambaforge/base/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

export PATH="/opt/homebrew/opt/libpcap/bin:$PATH"
. /opt/homebrew/opt/asdf/libexec/asdf.sh
export PATH="$PATH:$HOME/flutter/bin"

#export JAVA_HOME=$(/usr/libexec/java_home)
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-8.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home

export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools"


export CHROME_EXECUTABLE=/Applications/Microsoft\ Edge.app/Contents/MacOS/Microsoft\ Edge

export GROOVY_HOME=/opt/homebrew/opt/groovy/libexec


#ZSH
export ZSH="$HOME/.oh-my-zsh"
export ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Node
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Load Angular CLI autocompletion.
source <(ng completion script)

#Bitwarden shell completion
eval "$(bw completion --shell zsh); compdef _bw bw;"


#Rails
export PATH="$HOME/.rbenv/versions/3.2.0/bin:$HOME/.rbenv/versions/3.2.0/lib/ruby/gems/3.2.0/bin:$PATH"

export EDITOR="code -w"

export PATH="$HOME/.cargo/bin:$PATH"

# -------
# Aliases
# -------
alias c="clear"
alias spotx="bash <(curl -sSL https://spotx-official.github.io/run.sh)"

source "/opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme"
#export PATH="$PATH:/opt/homebrew/opt/openjdk@11/bin"
#export PATH="/usr/bin:$PATH"
#export PATH="$PATH:/usr/local/opt/openjdk@8/bin"

# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"

eval "$(zoxide init --cmd cd zsh)"
source <(fzf --zsh)
