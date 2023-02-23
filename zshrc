
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME=""
# ZSH_THEME="juanghurtado"
# ZSH_THEME="fox"
# ZSH_THEME=""
#

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions
git
copyfile
alias-finder
sudo)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias customer_data_pb2.py="nvim /remote/tmp/users_workplace/jesmith/codebase/onload_engine/install/onl/pub/site-packages/common/gen/customer_data_pb2.py"
alias dbosr="cd /remote/tmp/users_workplace/jesmith/codebase/dbosr"
alias log="cd /remote/tmp/users_workplace/jesmith/codebase/onload_engine/install/com/log"
alias refresh='cd ..; cd log; nvim ONL_ONL_otf_be_link'
alias cml='cd /remote/tmp/users_workplace/jesmith/codebase/cml'
alias codebase='cd /remote/tmp/users_workplace/jesmith/codebase'
alias onload='cd /remote/tmp/users_workplace/jesmith/codebase/onload_engine'
alias fli_npypy='cd /remote/tmp/users_workplace/jesmith/codebase/cml/cmfmt/ngflirgr/fli_npypy'
alias pylintt='npypy-manage run pylint --ignore=conftest.py,.venv,cml,fml --fail-under=8.0 flight_disruption/your_file_name.py'
alias pylint2='npypy-manage run pylint --ignore=conftest.py,.venv,onload_engine,fml --fail-under=8.0'
alias reload="exec zsh"
alias gst='git status -uno'
alias gl='git log --oneline'
alias push='git push -u origin HEAD'
alias pushf='git push -u origin HEAD -f'
alias amend='git commit --amend'
alias apush='amend && push'
alias apushf='amend && pushf'
# alias ^L='clear'
alias fzf='~/bin/fzf/bin/fzf'
#alias tmux='~/.local/bin/tmux'
# alias bat='~/bin/bat'
alias zshrc='nvim ~/.zshrc.override'
alias packer='cd ~/dotfiles/packer/start'
alias .tmux.conf='nvim ~/.tmux.conf'
alias init.vim='nvim ~/.config/nvim/init.vim'
alias init.lua='nvim ~/.config/nvim/lua/init.lua'
# alias nvim='~/nvim.appimage'
# alias nvim='/remote/users/jesmith/nvim-linux64/bin/nvim'
alias nvim='/remote/users/jesmith/nvim-linux64/bin/nvim'
# created an alias from the above to ~/local/bin
alias tmux='tmux -u'
alias nttboot='ntt vsy boot loadbasedb'
alias nttreboot='ntt vsy config boot loadbasedb'
alias nttcleanboot='ntt vsy c config boot loadbasedb'
alias spy='watch ps -aux --sort=-pcpu'
alias ga='git add $(fgc)'
alias squash='git rebase -i $(fcs)'
alias clr='tmux clear-history; clear'
alias ta='tmux attach'
alias td='tmux detach'
alias lg='lazygit'
alias lsp='nvim ~/.config/nvim/lua/plugs/lsp-config.lua'
alias lspsaga='nvim ~/.config/nvim/lua/plugs/lspsaga.lua'
alias commands='nvim ~/.config/nvim/commands.vim'
alias restartbuild='./manage.sh stop && ./manage.sh build && ./manage.sh install && ./manage.sh start'
alias buildstart='./manage.sh build && ./manage.sh install && ./manage.sh start'
alias restart='./manage.sh stop && ./manage.sh install && ./manage.sh start'
alias bfrestart='bf ./manage.sh stop && ./manage.sh install && ./manage.sh start'
# alias unittest='cd /remote/tmp/users_workplace/jesmith/codebase/onload_engine/bms/onl/rest_be/test/test_rest_be; source ../../../../../setenv'
# alias restart = './manage.sh stop && ./manage.sh start'
# alias boot = './manage.sh stop && ./manage.sh build && ./manage.sh install ./manage.sh start'

source ~/.zsh/alias.zsh

alias opts='nvim ~/.config/nvim/lua/opts.lua'
alias plugs='nvim ~/.config/nvim/lua/plugs.lua'
alias keys='nvim ~/.config/nvim/lua/keys.lua'
alias style='nvim ~/.config/nvim/lua/style.lua'
alias init='nvim ~/.config/nvim/lua/opts.lua ~/.config/nvim/lua/plugs.lua ~/.config/nvim/lua/keys.lua ~/.config/nvim/lua/style.lua'
alias build='bf make -j 38 NGD_EXPORT_COMPILE_COMMANDS=1'
alias index='ccls --index=.'
alias buildboot='(cml && build) && nttboot'
alias lintscore='npypy-manage run pylint --ignore=cnpypyonftest.py,.venv,cml,fml --fail-under=8.0'
# alias black='npypy-manage run black'
alias black2='.venv/bin/black'
# bindkey -s "^F" 'nvim $(fzf --preview "bat --style=numbers --color=always --line-range :500 {}")\n'
bindkey -v
export KEYTIMEOUT=1

ZSH_ALIAS_FINDER_AUTOMATIC=true

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# ============  FZF SHORTCUTS   ===============================
function f() {
    local fname
    fname=$(fzf --preview "bat --style=numbers --color=always {}") || return
    nvim "$fname"
}

function d() {
    local dirname
    dirname=$(find -type d | fzf) || return
    cd "$dirname"
}
source ~/.zsh/fzf-functions.zsh
# =============================================================

bindkey '^E' autosuggest-accept
bindkey -s "^F" 'nvim $(fzf --preview "bat --style=numbers --color=always {}")\n'
bindkey -s "^G" '(cd $(git rev-parse --show-toplevel); nvim $(fzf --preview "bat --style=numbers --color=always {}"))\n'
zle -N fzf_file f
# zle -N fzf_file g
zle -N fzf_dir fcd
# bindkey "^P" fzf_file
# bindkey "^F" fzf_file
bindkey "^F" fzf_file

zle -N kill_pid fkil
zle -N magic fkil
alias fkil kill_pid
# alias ff magic

# bindkey '^\n' autosuggest-accept
# bindkey -s '^\n' autosuggest-execute 
bindkey '^E' autosuggest-accept

source ~/zsh-z.plugin.zsh

local tmux install
export PATH=$HOME/local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH
# export LIBRARY_PATH=$HOME/local/lib64:$LIBRARY_PATH
export MANPATH=$HOME/local/share/man:$MANPATH

# export PATH+=$HOME/.zsh/pure


# fpath+=$HOME/.zsh/pure
# autoload -U promptinit; promptinit
# zstyle :prompt:pure:git:stash show yes
# prompt pure

autoload -Uz add-zsh-hook
prompt_mimir_cmd() { ~/.zsh/mimir }
add-zsh-hook precmd prompt_mimir_cmd
#
prompt_symbol='❯'
PROMPT="%(?.%F{magenta}.%F{red})${prompt_symbol}%f "

# source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
#

# FZF ripgrep
# frg() {
# INITIAL_QUERY=""
# RG_PREFIX="rg --column --line-number --no-heading --color=always --smart-case "
# FZF_DEFAULT_COMMAND="$RG_PREFIX '$INITIAL_QUERY'" \
#   fzf --bind "change:reload:$RG_PREFIX {q} || true" \
#       --ansi --disabled --query "$INITIAL_QUERY" \
#       --height=50% --layout=reverse
# }

#TMPDIR=$HOME/tmp

#TMP=$TMPDIR
#TEMP=$TMPDIR

#export TMPDIR TMP TEM

CMLDIR=/remote/tmp/users_workplace/jesmith/codebase/cml
CML=$CMLDIR
export CMLDIR CML
#export TMPDIR=//remote/tmp/users_workplace/jesmith/tmp
export TMPDIR=/gctmp/jesmith
# export NGD_EXPORT_COMPILE_COMMANDS=1

# use ripgrep to search for files with fzf
export FZF_DEFAULT_COMMAND='rg --files'
