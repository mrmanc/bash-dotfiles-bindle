#!/bin/bash

function addPromptCommand() {
	if [[ -n "$PROMPT_COMMAND" ]]
	then  
        	if [[ $PROMPT_COMMAND =~ ^.*\;\ *$ ]]
		then
			PROMPT_COMMAND=$PROMPT_COMMAND"$1"
		else
			PROMPT_COMMAND="$PROMPT_COMMAND;$1"
		fi
	else
		PROMPT_COMMAND="$1"
	fi
}
