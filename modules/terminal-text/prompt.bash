#!/bin/bash
systemSymbol=""
case "$(uname -s)" in
	Linux)
		systemSymbol=" 🐧 "
  		;;
	Darwin)
		systemSymbol="${GREEN} ${RESET_TEXT}"
		;;
esac
# Handy information: http://www.thegeekstuff.com/2008/09/bash-shell-ps1-10-examples-to-make-your-linux-prompt-like-angelina-jolie/
okayStatusIndicator="😍"
errorStatusIndicator="💩"
currentTime="${WHITE}\e[44m\A${RESET_TEXT}"
currentPath="${BLUE}\w${RESET_TEXT}"
userAtHost="${WHITE}\u@\h"
export PS1="${userAtHost}${PROMPT_HOME_IDENTIFIER}${systemSymbol} ${currentTime} ${currentPath}\n\$(if [ \$? -ne 0 ]; then echo ${errorStatusIndicator}; else echo ${okayStatusIndicator}; fi;) \[${RESET_TEXT}\] "