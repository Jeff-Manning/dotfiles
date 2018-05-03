
ssh() { command ssh "$@"; source ~/.bashrc; }
echo -e "\033]50;SetProfile=Default\a"

function count { printf $2; grep -o "$2" "$1"| wc -l; }
export -f count

source ~/.functions
source ~/.aliases

export LSCOLORS=fxfxcxdxdxexexabagacad
export PATH=$PATH:/usr/local/Cellar/geckodriver/0.20.0
function tab-title {
  if [ -z "$1" ]
  then
    title=${PWD##*/} # current directory
  else
    title=$1 # first param
  fi
  echo -n -e "\033]0;$title\007"

}
