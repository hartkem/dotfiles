
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/maxhartke/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/maxhartke/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/maxhartke/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/maxhartke/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

export ANDROID_SDK=/Users/maxhartke/Library/Android/sdk
export PATH=/Users/maxhartke/Library/Android/sdk/platform-tools:$PATH

export PATH="${PATH}:/Users/maxhartke/Library/Python/2.7/bin"
export PYTHONPATH="${PYTHONPATH}:/Users/maxhartke/Library/Python/2.7/bin"
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/maxhartke/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/maxhartke/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/maxhartke/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/maxhartke/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Git branch in prompt.

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{green}(%b)'
 
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%n ${PWD#$HOME/} ${vcs_info_msg_0_}%F{Blue} $ '

function take() {
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}
