function __put_template_iterm_color
	if string match -q -- 'iTerm*' $TERM_PROGRAM
		or functions -q -- iterm2_status
		printf '\033]1337;SetColors=%s=%s\033\\' $argv
	end
end
