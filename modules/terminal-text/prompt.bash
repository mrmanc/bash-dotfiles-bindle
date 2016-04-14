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
okayStatusIndicator=😍
errorStatusIndicator=💩
# Handy information: http://www.thegeekstuff.com/2008/09/bash-shell-ps1-10-examples-to-make-your-linux-prompt-like-angelina-jolie/
CURRENT_TIME="$WHITE\e[44m\A$RESET_TEXT"
CURRENT_PATH="$BLUE\w$RESET_TEXT"
USER_AT_HOST="$WHITE\u@\h"
export PS1="$USER_AT_HOST${PROMPT_HOME_IDENTIFIER}${systemSymbol} $CURRENT_TIME $CURRENT_PATH\n$(if [ $? -ne 0 ]; then echo $errorStatusIndicator; else echo $okayStatusIndicator; fi;) \[$RESET_TEXT\]"
