#!/usr/bin/env zsh

function custom_git_prompt {
  local git_info=$(git_prompt_info)
  if [[ -n "$git_info" ]]; then
    echo "%{$fg[white]%}||%{$fg[cyan]%}${git_info}%{$fg[white]%}||"
  else
    echo "%{$fg[white]%}||"
  fi
}

