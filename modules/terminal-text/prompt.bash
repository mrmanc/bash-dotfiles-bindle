#!/bin/bash
systemSymbol=""
case "$(uname -s)" in
	Linux)
		systemSymbol=" 🐧 "
  		;;
	Darwin)
		systemSymbol="$GREEN  $RESET_TEXT"
		;;
esac
export PS1="$WHITE[\u@\h${PROMPT_HOST_SUFFIX}${systemSymbol}]$RESET_TEXT $BLUE\w$RESET_TEXT \[$YELLOW\]$\[$RESET_TEXT\] "
