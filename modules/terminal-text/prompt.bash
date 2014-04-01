#!/bin/bash
systemSymbol=""
case "$(uname -s)" in
	Linux)
		systemSymbol=" 🐧"
  		;;
	Darwin)
		systemSymbol="$GREEN $RESET_TEXT"
		;;
esac
export PS1="$WHITE\u@\h${PROMPT_HOME_IDENTIFIER}${systemSymbol} $BLUE\w$RESET_TEXT \[$YELLOW\]$\[$RESET_TEXT\] "
