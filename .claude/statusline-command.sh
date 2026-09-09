#!/bin/bash
# Status line: model name, 5h/7d rate limits, remaining context window

input=$(cat)

model=$(echo "$input" | jq -r '.model.display_name')

five=$(echo "$input" | jq -r '.rate_limits.five_hour.used_percentage // empty')
week=$(echo "$input" | jq -r '.rate_limits.seven_day.used_percentage // empty')

remaining=$(echo "$input" | jq -r '.context_window.remaining_percentage // empty')

dim=$'\033[2m'
reset=$'\033[0m'

out="${dim}${model}"

if [ -n "$five" ] || [ -n "$week" ]; then
  out="${out}${dim} |"
  [ -n "$five" ] && out="${out} 5h: $(printf '%.0f' "$five")%"
  [ -n "$week" ] && out="${out} 7d: $(printf '%.0f' "$week")%"
fi

if [ -n "$remaining" ]; then
  out="${out}${dim} | ctx: $(printf '%.0f' "$remaining")% left"
fi

printf '%s%s' "$out" "$reset"
