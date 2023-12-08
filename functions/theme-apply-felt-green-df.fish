# theme-apply-fish-shell (https://git.desertflood.com/jmartindf/theme-apply-fish-shell)
# Inspired by base16-fish-shell (https://github.com/FabioAntunes/base16-fish-shell)
# Felt Green — Desertflood scheme by Joe Martin (https://desertflood.com/)

function theme-apply-felt-green-df -d "Felt Green — Desertflood theme"
    set options (fish_opt --short=t --long=test)
    argparse $options -- $argv

    # colors
    set color00 "9c9c9c" "9c/9c/9c" # Black
    set color01 "ff8c8c" "ff/8c/8c" # Red
    set color02 "74ff00" "74/ff/00" # Green
    set color03 "f1ff01" "f1/ff/01" # Yellow
    set color04 "00deff" "00/de/ff" # Blue
    set color05 "ff85c6" "ff/85/c6" # Magenta
    set color06 "00ffbc" "00/ff/bc" # Cyan
    set color07 "ffffff" "ff/ff/ff" # White
    set color08 "8c8c8c" "8c/8c/8c" # Bright Black
    set color09 "ff3e3e" "ff/3e/3e" # Bright Red
    set color10 "00ff44" "00/ff/44" # Bright Green
    set color11 "ffd100" "ff/d1/00" # Bright Yellow
    set color12 "00afff" "00/af/ff" # Bright Blue
    set color13 "ff00f0" "ff/00/f0" # Bright Magenta
    set color14 "00ffd3" "00/ff/d3" # Bright Cyan
    set color15 "f5ecec" "f5/ec/ec" # Bright White
    set color_bold "e1e4e3" "e1/e4/e3"
    set color_cursor "fff400" "ff/f4/00"
    set color_cursor_text "e1e4e3" "e1/e4/e3" # Base 01
    set color_selection "517e50" "51/7e/50" # Base 02
    set color_selected_text "e2e2e2" "e2/e2/e2" # Base 04
    set color_foreground "ffffff" "ff/ff/ff"
    set color_background "002a1a" "00/2a/1a"

    # 16 color space
    __put_template 0  $color00[2]
    __put_template 1  $color01[2]
    __put_template 2  $color02[2]
    __put_template 3  $color03[2]
    __put_template 4  $color04[2]
    __put_template 5  $color05[2]
    __put_template 6  $color06[2]
    __put_template 7  $color07[2]
    __put_template 8  $color08[2]
    __put_template 9  $color09[2]
    __put_template 10 $color10[2]
    __put_template 11 $color11[2]
    __put_template 12 $color12[2]
    __put_template 13 $color13[2]
    __put_template 14 $color14[2]
    __put_template 15 $color15[2]

    # 256 color space
    # __put_template 16 $color16[2]
    # __put_template 17 $color17[2]
    # __put_template 18 $color18[2]
    # __put_template 19 $color19[2]
    # __put_template 20 $color20[2]
    # __put_template 21 $color21[2]

    # foreground / background / cursor color
    if test -n "$ITERM_SESSION_ID"
        or functions -q -- iterm2_status
        # iTerm2 proprietary escape codes
        __put_template_iterm_color fg $color_foreground[1] # foreground
        __put_template_iterm_color bg $color_background[1] # background

        __put_template_iterm_color black $color00[1]
        __put_template_iterm_color red $color01[1]
        __put_template_iterm_color green $color02[1]
        __put_template_iterm_color yellow $color03[1]
        __put_template_iterm_color blue $color04[1]
        __put_template_iterm_color magenta $color05[1]
        __put_template_iterm_color cyan $color06[1]
        __put_template_iterm_color white $color07[1]
        __put_template_iterm_color br_black $color08[1]
        __put_template_iterm_color br_red $color09[1]
        __put_template_iterm_color br_green $color10[1]
        __put_template_iterm_color br_yellow $color11[1]
        __put_template_iterm_color br_blue $color12[1]
        __put_template_iterm_color br_magenta $color13[1]
        __put_template_iterm_color br_cyan $color14[1]
        __put_template_iterm_color br_white $color15[1]

    else
        __put_template_var 10 $color_foreground[2]
        if test "$THEME_APPLY_SHELL_SET_BACKGROUND" != false
            __put_template_var 11 $color_background[2]
            if string match -q -- '*rxvt*' $TERM
                __put_template_var 708 $color_background[2] # internal border (rxvt)
            end
        end
        __put_template_custom 12 ";7" # cursor (reverse video)
    end

    if test -z $theme_apply_fish_shell_disable_prompt_colors
        set -gx fish_color_normal normal
        set -gx fish_color_command $color04[1] blue
        set -gx fish_color_quote $color03[1] yellow
        set -gx fish_color_redirection $color06[1] cyan --bold
        set -gx fish_color_end $color02[1] green
        set -gx fish_color_error $color09[1] brred
        set -gx fish_color_param $color06[1] cyan
        set -gx fish_color_comment $color01[1] red
        set -gx fish_color_match --background=$color12[1] # --background brblue
        set -gx fish_color_selection $color07[1] white --bold --background=$color08[1] #brblack
        set -gx fish_color_search_match $color11[1] bryellow --background=$color08[1] #brblack
        set -gx fish_color_history_current --bold
        set -gx fish_color_operator $color14[1] brcyan
        set -gx fish_color_escape $color14[1] brcyan
        set -gx fish_color_cwd $color02[1] green
        set -gx fish_color_cwd_root $color01[1] red
        set -gx fish_color_valid_path --underline
        set -gx fish_color_autosuggestion $color08[1] brblack
        set -gx fish_color_user $color10[1] brgreen
        set -gx fish_color_host normal
        set -gx fish_color_cancel -r
        set -gx fish_pager_color_completion normal
        set -gx fish_pager_color_description $color03[1] yellow
        set -gx fish_pager_color_prefix normal --bold --underline
        set -gx fish_pager_color_progress $color15[1] brwhite --background=$color06[1] #cyan
        set -gx fish_pager_color_selected_background -r
        set -gx fish_color_option $color06[1] cyan
        set -gx fish_color_keyword $color04[1] blue
        set -gx fish_color_host_remote $color03[1] yellow
        set -gx fish_color_status $color01[1] red
    end

    __theme_apply_fish_shell_set_background "31.915599999999998"
    # __theme_apply_fish_shell_create_vimrc_background felt-green-df
    set -U theme_apply_fish_theme felt-green-df

    if test -n "$_flag_t"
        set theme_apply_colors_hex
        set padded_seq_values (seq -w 0 21)
        for seq_value in $padded_seq_values
            set -l color "color$seq_value"
            set theme_apply_colors_hex $theme_apply_colors_hex (string replace -a / "" $$color)
        end

        __theme_apply_fish_shell_color_test $theme_apply_colors_hex
    end
end
