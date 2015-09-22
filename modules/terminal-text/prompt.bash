#!/bin/bash
status=$?
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
export PS1="${WHITE}\u@\h${PROMPT_HOME_IDENTIFIER}${systemSymbol} ${WHITE}\e[44m\A${RESET_TEXT} ${BLUE}\w${RESET_TEXT}\[${YELLOW}\]\n\$(if [ \$? -ne 0 ]; then echo ${errorStatusIndicator}; else echo ${okayStatusIndicator}; fi;) \[${RESET_TEXT}\] "
