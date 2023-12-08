# theme-apply-fish-shell (https://git.desertflood.com/jmartindf/theme-apply-fish-shell)
# Inspired by base16-fish-shell (https://github.com/FabioAntunes/base16-fish-shell)
# Solarized Dark Higher Contrast scheme by iTerm2 Schemes

function theme-apply-solarized-dark-higher-contrast -d "Solarized Dark Higher Contrast theme"
    set options (fish_opt --short=t --long=test)
    argparse $options -- $argv

    # colors
    set color00 "002831" "00/28/31" # Black
    set color01 "d11c24" "d1/1c/24" # Red
    set color02 "6cbe6c" "6c/be/6c" # Green
    set color03 "a57706" "a5/77/06" # Yellow
    set color04 "2176c7" "21/76/c7" # Blue
    set color05 "c61c6f" "c6/1c/6f" # Magenta
    set color06 "259286" "25/92/86" # Cyan
    set color07 "eae3cb" "ea/e3/cb" # White
    set color08 "006488" "00/64/88" # Bright Black
    set color09 "f5163b" "f5/16/3b" # Bright Red
    set color10 "51ef84" "51/ef/84" # Bright Green
    set color11 "b27e28" "b2/7e/28" # Bright Yellow
    set color12 "178ec8" "17/8e/c8" # Bright Blue
    set color13 "e24d8e" "e2/4d/8e" # Bright Magenta
    set color14 "00b39e" "00/b3/9e" # Bright Cyan
    set color15 "fcf4dc" "fc/f4/dc" # Bright White
    set color_bold "b5d5d3" "b5/d5/d3"
    set color_cursor "f34b00" "f3/4b/00"
    set color_cursor_text "002831" "00/28/31" # Base 01
    set color_selection "003748" "00/37/48" # Base 02
    set color_selected_text "7a8f8e" "7a/8f/8e" # Base 04
    set color_foreground "9cc2c3" "9c/c2/c3"
    set color_background "001e27" "00/1e/27"

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

        __put_template_iterm_color bold $color_bold[1] # bold color
        __put_template_iterm_color selbg $color_selection[1] # selection color
        __put_template_iterm_color selfg $color_selected_text[1] # selected text color
        __put_template_iterm_color curbg $color_cursor[1] # cursor
        __put_template_iterm_color curfg $color_cursor_text[1] # cursor text
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

    __theme_apply_fish_shell_set_background "24.2718"
    # __theme_apply_fish_shell_create_vimrc_background solarized-dark-higher-contrast
    set -U theme_apply_fish_theme solarized-dark-higher-contrast

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
