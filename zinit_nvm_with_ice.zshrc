# ███████╗███████╗██╗  ██╗     ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗ 
# ╚══███╔╝██╔════╝██║  ██║    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝ 
#   ███╔╝ ███████╗███████║    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗
#  ███╔╝  ╚════██║██╔══██║    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║
# ███████╗███████║██║  ██║    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝
# ╚══════╝╚══════╝╚═╝  ╚═╝     ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝ 
# thelazt16
# github.com/thelazt16
# Figlet font: ANSI Shadow, Calvin S, tmplr

# For checking how fast the prompt open
start_time=$(date +%s%3N)
# zmodload zsh/zprof

# ╔═╗╦╔╗╔╦╔╦╗  ╔═╗╔═╗╔╦╗╦ ╦╔═╗
# ╔═╝║║║║║ ║   ╚═╗║╣  ║ ║ ║╠═╝
# ╚═╝╩╝╚╝╩ ╩   ╚═╝╚═╝ ╩ ╚═╝╩  
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# ╔═╗╦╔╗╔╦╔╦╗  ╔═╗╦  ╦ ╦╔═╗╦╔╗╔╔═╗
# ╔═╝║║║║║ ║   ╠═╝║  ║ ║║ ╦║║║║╚═╗
# ╚═╝╩╝╚╝╩ ╩   ╩  ╩═╝╚═╝╚═╝╩╝╚╝╚═╝
zinit ice wait lucid
zinit snippet OMZP::bgnotify
zinit ice wait lucid
zinit snippet OMZP::colored-man-pages
zinit ice wait lucid
zinit snippet OMZP::command-not-found
zinit ice wait lucid
zinit snippet OMZP::git
zinit ice wait lucid
zinit snippet OMZP::nvm
zinit ice wait lucid
zinit snippet OMZP::thefuck

zinit ice wait lucid
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting
zinit light MichaelAquilina/zsh-you-should-use

# ╔╗ ╔═╗╔═╗╦╔═╗  ╔═╗╔═╗╔╗╔╔═╗╦╔═╗╔═╗
# ╠╩╗╠═╣╚═╗║║    ║  ║ ║║║║╠╣ ║║ ╦╚═╗
# ╚═╝╩ ╩╚═╝╩╚═╝  ╚═╝╚═╝╝╚╝╚  ╩╚═╝╚═╝
ZSHDIR="$HOME/.config/zsh"
HISTSIZE=10000
SAVEHIST=10000

# ╦  ╦╔═╗╦═╗╦╔═╗╔╗ ╦  ╔═╗╔═╗
# ╚╗╔╝╠═╣╠╦╝║╠═╣╠╩╗║  ║╣ ╚═╗
#  ╚╝ ╩ ╩╩╚═╩╩ ╩╚═╝╩═╝╚═╝╚═╝
export EDITOR='code'
export BROWSER='firefox'
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"

# ╔═╗╔═╗╦ ╦  ╔═╗╔═╗╔╦╗╦╔═╗╔╗╔╔═╗
# ╔═╝╚═╗╠═╣  ║ ║╠═╝ ║ ║║ ║║║║╚═╗
# ╚═╝╚═╝╩ ╩  ╚═╝╩   ╩ ╩╚═╝╝╚╝╚═╝
# ZSH cool options to make your life easier
setopt AUTOCD               # change directory just by typing its name
setopt AUTO_LIST            # Automatically list choices on ambiguous completion.
setopt COMPLETE_IN_WORD     # Complete from both ends of a word.
setopt HIST_FIND_NO_DUPS    # When searching history don't display results already cycled through twice
setopt HIST_IGNORE_ALL_DUPS	    # Do not write events to history that are duplicates of previous events
setopt HIST_IGNORE_DUPS	    # Do not write events to history that are duplicates of previous events
setopt HIST_SAVE_NO_DUPS	# Do not save events to history that are duplicates of previous events
setopt LIST_PACKED		    # The completion menu takes less space.
setopt MENU_COMPLETE        # Automatically highlight first element of completion menu
setopt PROMPT_SUBST         # enable command substitution in prompt
setopt SHAREHISTORY         # share history to other prompt right away not at launch

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# ╦╔═╔═╗╦ ╦╔╗ ╦╔╗╔╔╦╗╦╔╗╔╔═╗╔═╗
# ╠╩╗║╣ ╚╦╝╠╩╗║║║║ ║║║║║║║ ╦╚═╗
# ╩ ╩╚═╝ ╩ ╚═╝╩╝╚╝═╩╝╩╝╚╝╚═╝╚═╝
# Bind HOME key to beginning-of-line
bindkey "\e[1~" beginning-of-line
bindkey "\e[H" beginning-of-line

# Bind END key to end-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[F" end-of-line

# Bind PageUp key to scroll up
bindkey "\e[5~" history-beginning-search-backward

# Bind PageDown key to scroll down
bindkey "\e[6~" history-beginning-search-forward

# Bind Delete key to delete-char
bindkey "\e[3~" delete-char

# Define a function to add 'sudo ' to the beginning of the current command line
add_sudo() {
    [[ $BUFFER == "sudo "* ]] && BUFFER="${BUFFER#sudo }" || BUFFER="sudo $BUFFER"
    zle end-of-line  # Move cursor to the end of the line after adding 'sudo '
}
zle -N add_sudo  # Associate function with a zle widget

# Bind the grave key (`) to the add_sudo function when pressed twice
bindkey "\`\`" add_sudo

# ╔╗ ╦╔╗╔╔═╗╦═╗╦╔═╗╔═╗
# ╠╩╗║║║║╠═╣╠╦╝║║╣ ╚═╗
# ╚═╝╩╝╚╝╩ ╩╩╚═╩╚═╝╚═╝
# Sourcing binary directories to load to $PATH
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:$PATH"
[ -d "$HOME/bin" ] && PATH="$HOME/bin:$PATH"

# ┓ ┏┳┳┓  ┏┓┏┓┏┓┏┓┳┏┓┳┏┓
# ┃┃┃┃┃┃  ┗┓┃┃┣ ┃ ┃┣ ┃┃ 
# ┗┻┛┛ ┗  ┗┛┣┛┗┛┗┛┻┻ ┻┗┛
# Load script specific to each wm
current_wm="$(wmctrl -m | awk -F': ' '/Name/ {print $2}')"
case "$current_wm" in
    Hyprland*)
        PATH="$HOME/.bin/hyprland:$HOME/.config/hypr/scripts:$PATH"
    ;;
    *)
        PATH="$HOME/.bin/$current_wm:$PATH"
    ;;
esac

# ╔═╗╦  ╦╔═╗╔═╗╔═╗╔═╗
# ╠═╣║  ║╠═╣╚═╗║╣ ╚═╗
# ╩ ╩╩═╝╩╩ ╩╚═╝╚═╝╚═╝
source "$ZSHDIR/aliases.zsh"
# check if wireguard is installed, then source the aliases
which wg > /dev/null 2>&1 && source "$ZSHDIR/wireguard.zsh"
# check if pacman is installed, then source the aliases
which pacman > /dev/null 2>&1 && source "$ZSHDIR/pacman.zsh"

# ╔═╗╔╦╗╔╦╗
# ║  ║║║ ║║
# ╚═╝╩ ╩═╩╝
# source aliases.zsh so that any changes made will be applied on enter
precmd() {
    source "$ZSHDIR/aliases.zsh"
}

# ╦╔╗╔╦╔╦╗╔═╗
# ║║║║║ ║ ╚═╗
# ╩╝╚╝╩ ╩ ╚═╝
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
eval "$(atuin init zsh)"

# Check how fast the prompt open
end_time=$(date +%s%3N)
elapsed=$((end_time - start_time))
echo "Zsh startup time: ${elapsed} ms"

# zprof