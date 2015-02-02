#!/bin/bash
systemSymbol=""
case "$(uname -s)" in
	Linux)
		systemSymbol=" 🐧 "
  		;;
	Darwin)
		systemSymbol="$GREEN $RESET_TEXT"
		;;
esac
export PS1="${WHITE}\u@\h${PROMPT_HOME_IDENTIFIER}${systemSymbol} ${WHITE}\e[44m$(date "+%H:%M")${RESET_TEXT} ${BLUE}\w${RESET_TEXT}\[${YELLOW}\]\n$\[${RESET_TEXT}\] "
