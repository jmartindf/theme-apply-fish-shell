# theme-apply-fish-shell (https://git.desertflood.com/jmartindf/theme-apply-fish-shell)
# Inspired by base16-fish-shell (https://github.com/FabioAntunes/base16-fish-shell)
# Borland — Desertflood scheme by Joe Martin (https://desertflood.com/)

function theme-apply-blue-borland-df -d "Borland — Desertflood theme"
    set options (fish_opt --short=t --long=test)
    argparse $options -- $argv

    # colors
    set color00 "929292" "92/92/92" # Black
    set color01 "ff8288" "ff/82/88" # Red
    set color02 "a8ff60" "a8/ff/60" # Green
    set color03 "ffff4e" "ff/ff/4e" # Yellow
    set color04 "96cbfe" "96/cb/fe" # Blue
    set color05 "e9c1ff" "e9/c1/ff" # Magenta
    set color06 "89ebff" "89/eb/ff" # Cyan
    set color07 "eeeeee" "ee/ee/ee" # White
    set color08 "adadad" "ad/ad/ad" # Bright Black
    set color09 "ffb6b0" "ff/b6/b0" # Bright Red
    set color10 "1cfe3c" "1c/fe/3c" # Bright Green
    set color11 "fefe45" "fe/fe/45" # Bright Yellow
    set color12 "b5dcff" "b5/dc/ff" # Bright Blue
    set color13 "ff9cfe" "ff/9c/fe" # Bright Magenta
    set color14 "a3f7ff" "a3/f7/ff" # Bright Cyan
    set color15 "ffffff" "ff/ff/ff" # Bright White
    set color_bold "ffff4e" "ff/ff/4e"
    set color_cursor "ffa560" "ff/a5/60"
    set color_cursor_text "ffffff" "ff/ff/ff" # Base 01
    set color_selection "a4a4a4" "a4/a4/a4" # Base 02
    set color_selected_text "0000a4" "00/00/a4" # Base 04
    set color_foreground "f6f6f7" "f6/f6/f7"
    set color_background "0000a4" "00/00/a4"

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

    __theme_apply_fish_shell_set_background "11.8408"
    # __theme_apply_fish_shell_create_vimrc_background blue-borland-df
    set -U theme_apply_fish_theme blue-borland-df

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
