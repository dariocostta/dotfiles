# This config need fzf, fd, bat and git in the Path to work.
# Also only tested it on Windows Git Bash.

bind 'set bell-style none'

PROMPT_DIRTRIM=2

PROMPT_COMMAND='PS1=$(lualine_like)'

lualine_like(){

  DIR_FG="5;81"
  DIR_BG="5;235"

  GIT_FG="5;0"
  GIT_BG="5;9"

  HOST_FG="5;115"
  HOST_BG="5;235"

  GIT_SEG="$(git_segment)"
  if [ "${#GIT_SEG}"  -gt 42 ]; then
    HOST_SEG="\[\e[0;38;5;226;48;${HOST_BG}m\]  \[\e[0;38;$DIR_BG;48;${GIT_BG}m\]\[\e[0m\]"
    USER_SEG="\[\e[0;38;${GIT_FG};48;${GIT_BG}m\] \u@\h |\[\e[0m\]"
    PROMPT_SEG="\n\[\e[0;38;5;226m\] ➤ \[\e[0m\]"
  else
    HOST_SEG="\[\e[0;38;$HOST_FG;48;${HOST_BG}m\]   \[\e[0;38;$DIR_BG;48;${DIR_FG}m\]\[\e[0m\]"
    USER_SEG="\[\e[0;38;5;16;48;${DIR_FG}m\] \u@\h \[\e[0m\]"
    PROMPT_SEG="\n\[\e[0;38;${HOST_FG}m\] ➤  \[\e[0m\]"
  fi

  DIR_SEG="\[\e[0;38;$DIR_FG;48;${DIR_BG}m\] 🗁  \W \e[0;38;${DIR_BG}m\]\e[0m\]"

  echo -e "${HOST_SEG}${GIT_SEG}${DIR_SEG}${PROMPT_SEG}"
}

git_segment() {
  local dir="$PWD"
  local i=0
  local found_dir=""
  local branch=""

  while [ $i -lt 10 ]; do
    if [ -d "$dir/.git" ]; then
      found_dir="$dir"
      break
    fi
    # stop if we reached root
    [ "$dir" = "/" ] && break
    dir=$(dirname "$dir")
    i=$((i + 1))
  done

  if [ -n "$found_dir" ]; then
    # Use git -C so we don't change PWD; suppress errors
    branch=$(git -C "$found_dir" rev-parse --abbrev-ref HEAD 2>/dev/null)
    echo -e "\[\e[1;38;$GIT_FG;48;${GIT_BG}m\] $branch \[\e[0;38;5;167;48;${DIR_BG}m\]\[\e[0m\]"
  else
    echo -e "\[\e[0;38;5;81;48;5;235m\]\[\e[0m\]"
  fi
}


nvf(){
  local file=$(fzf --style full --height 80% --reverse --border rounded --preview 'bat --style=numbers --color=always --line-range :500 {}')
  [ -n "$file" ] && nvim "$file"
}

hf() {
  local cmd=$(history | fzf --style full --height 40% --reverse --border rounded | sed 's/ *[0-9]* *//')
  [ -n "$cmd" ] && echo "\$ $cmd" && eval "$cmd"
}

cdf(){
  local dir=$(fd -t d -p "$@" | fzf --style full --height 40% --reverse --border rounded)
  [ -n "$dir" ] && echo "\$ cd $dir" && cd "$dir"
}
