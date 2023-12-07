# theme-apply-fish-shell (https://git.desertflood.com/jmartindf/theme-apply-fish-shell)
# Inspired by base16-fish-shell (https://github.com/FabioAntunes/base16-fish-shell)
# {{scheme_name}} scheme by {{scheme_author}}

function theme-apply-{{scheme_slug}} -d "{{scheme_name}} theme"
    set options (fish_opt --short=t --long=test)
    argparse $options -- $argv

    # colors
    set color00 "{{ colors.Ansi_0_Color.hex }}" # Black
    set color01 "{{ colors.Ansi_1_Color.hex }}" # Red
    set color02 "{{ colors.Ansi_2_Color.hex }}" # Green
    set color03 "{{ colors.Ansi_3_Color.hex }}" # Yellow
    set color04 "{{ colors.Ansi_4_Color.hex }}" # Blue
    set color05 "{{ colors.Ansi_5_Color.hex }}" # Magenta
    set color06 "{{ colors.Ansi_6_Color.hex }}" # Cyan
    set color07 "{{ colors.Ansi_7_Color.hex }}" # White
    set color08 "{{ colors.Ansi_8_Color.hex }}" # Bright Black
    set color09 "{{ colors.Ansi_9_Color.hex }}" # Bright Red
    set color10 "{{ colors.Ansi_10_Color.hex }}" # Bright Green
    set color11 "{{ colors.Ansi_11_Color.hex }}" # Bright Yellow
    set color12 "{{ colors.Ansi_12_Color.hex }}" # Bright Blue
    set color13 "{{ colors.Ansi_13_Color.hex }}" # Bright Magenta
    set color14 "{{ colors.Ansi_14_Color.hex }}" # Bright Cyan
    set color15 "{{ colors.Ansi_15_Color.hex }}" # Bright White
    {% if Bold_Color %}
    set color_bold "{{ colors.Bold_Color.hex }}"
    {% endif %}
    {% if Cursor_Color %}
    set color_cursor "{{ colors.Cursor_Color.hex }}"
    {% endif %}
    {% if Cursor_Text_Color %}
    set color_cursor_text "{{ colors.Cursor_Text_Color.hex }}" # Base 01
    {% endif %}
    {% if Selection_Color %}
    set color_selection "{{ colors.Selection_Color.hex }}" # Base 02
    {% endif %}
    {% if Selected_Text_Color %}
    set color_selected_text "{{ colors.Selected_Text_Color.hex }}" # Base 04
    {% endif %}
    {% if Foreground_Color %}
    set color_foreground "{{ colors.Foreground_Color.hex }}"
    {% endif %}
    {% if Background_Color %}
    set color_background "{{ colors.Background_Color.hex }}"
    {% endif %}

    # colors
    set color00_xterm "{{ colors.Ansi_0_Color.xterm_rgb }}" # Black
    set color01_xterm "{{ colors.Ansi_1_Color.xterm_rgb }}" # Red
    set color02_xterm "{{ colors.Ansi_2_Color.xterm_rgb }}" # Green
    set color03_xterm "{{ colors.Ansi_3_Color.xterm_rgb }}" # Yellow
    set color04_xterm "{{ colors.Ansi_4_Color.xterm_rgb }}" # Blue
    set color05_xterm "{{ colors.Ansi_5_Color.xterm_rgb }}" # Magenta
    set color06_xterm "{{ colors.Ansi_6_Color.xterm_rgb }}" # Cyan
    set color07_xterm "{{ colors.Ansi_7_Color.xterm_rgb }}" # White
    set color08_xterm "{{ colors.Ansi_8_Color.xterm_rgb }}" # Bright Black
    set color09_xterm "{{ colors.Ansi_9_Color.xterm_rgb }}" # Bright Red
    set color10_xterm "{{ colors.Ansi_10_Color.xterm_rgb }}" # Bright Green
    set color11_xterm "{{ colors.Ansi_11_Color.xterm_rgb }}" # Bright Yellow
    set color12_xterm "{{ colors.Ansi_12_Color.xterm_rgb }}" # Bright Blue
    set color13_xterm "{{ colors.Ansi_13_Color.xterm_rgb }}" # Bright Magenta
    set color14_xterm "{{ colors.Ansi_14_Color.xterm_rgb }}" # Bright Cyan
    set color15_xterm "{{ colors.Ansi_15_Color.xterm_rgb }}" # Bright White
    {% if Bold_Color %}
    set color_bold_xterm "{{ colors.Bold_Color.xterm_rgb }}"
    {% endif %}
    {% if Cursor_Color %}
    set color_cursor_xterm "{{ colors.Cursor_Color.xterm_rgb }}"
    {% endif %}
    {% if Cursor_Text_Color %}
    set color_cursor_text_xterm "{{ colors.Cursor_Text_Color.xterm_rgb }}" # Base 01
    {% endif %}
    {% if Selection_Color %}
    set color_selection_xterm "{{ colors.Selection_Color.xterm_rgb }}" # Base 02
    {% endif %}
    {% if Selected_Text_Color %}
    set color_selected_text_xterm "{{ colors.Selected_Text_Color.xterm_rgb }}" # Base 04
    {% endif %}
    {% if Foreground_Color %}
    set color_foreground_xterm "{{ colors.Foreground_Color.xterm_rgb }}"
    {% endif %}
    {% if Background_Color %}
    set color_background_xterm "{{ colors.Background_Color.xterm_rgb }}"
    {% endif %}

    # 16 color space
    __put_template 0  $color00_xterm
    __put_template 1  $color01_xterm
    __put_template 2  $color02_xterm
    __put_template 3  $color03_xterm
    __put_template 4  $color04_xterm
    __put_template 5  $color05_xterm
    __put_template 6  $color06_xterm
    __put_template 7  $color07_xterm
    __put_template 8  $color08_xterm
    __put_template 9  $color09_xterm
    __put_template 10 $color10_xterm
    __put_template 11 $color11_xterm
    __put_template 12 $color12_xterm
    __put_template 13 $color13_xterm
    __put_template 14 $color14_xterm
    __put_template 15 $color15_xterm

    # 256 color space
    # __put_template 16 $color16_xterm
    # __put_template 17 $color17_xterm
    # __put_template 18 $color18_xterm
    # __put_template 19 $color19_xterm
    # __put_template 20 $color20_xterm
    # __put_template 21 $color21_xterm

    # foreground / background / cursor color
    if test -n "$ITERM_SESSION_ID"
        or functions -q -- iterm2_status
        # iTerm2 proprietary escape codes
        __put_template_iterm_color fg $color_foreground # foreground
        __put_template_iterm_color bg $color_background # background

        {% if Bold_Color %}
        __put_template_iterm_color bold $color_bold # bold color
        {% endif %}
        {% if Selection_Color %}
        __put_template_iterm_color selbg $color_selection # selection color
        {% endif %}
        {% if Selected_Text_Color %}
        __put_template_iterm_color selfg $color_selected_text # selected text color
        {% endif %}
        {% if Cursor_Color %}
        __put_template_iterm_color curbg $color_cursor # cursor
        {% endif %}
        {% if color_cursor_text %}
        __put_template_iterm_color curfg $color_cursor_text # cursor text
        {% endif %}
        __put_template_iterm_color black $color00
        __put_template_iterm_color red $color01
        __put_template_iterm_color green $color02
        __put_template_iterm_color yellow $color03
        __put_template_iterm_color blue $color04
        __put_template_iterm_color magenta $color05
        __put_template_iterm_color cyan $color06
        __put_template_iterm_color white $color07
        __put_template_iterm_color br_black $color08
        __put_template_iterm_color br_red $color09
        __put_template_iterm_color br_green $color10
        __put_template_iterm_color br_yellow $color11
        __put_template_iterm_color br_blue $color12
        __put_template_iterm_color br_magenta $color13
        __put_template_iterm_color br_cyan $color14
        __put_template_iterm_color br_white $color15

    else
        __put_template_var 10 $color_foreground_xterm
        if test "$THEME_APPLY_SHELL_SET_BACKGROUND" != false
            __put_template_var 11 $color_background_xterm
            if string match -q -- '*rxvt*' $TERM
                __put_template_var 708 $color_background_xterm # internal border (rxvt)
            end
        end
        __put_template_custom 12 ";7" # cursor (reverse video)
    end

    if test -z $theme_apply_fish_shell_disable_prompt_colors
        set -gx fish_color_normal normal
        set -gx fish_color_command $color04 blue
        set -gx fish_color_quote $color03 yellow
        set -gx fish_color_redirection $color06 cyan --bold
        set -gx fish_color_end $color02 green
        set -gx fish_color_error $color09 brred
        set -gx fish_color_param $color06 cyan
        set -gx fish_color_comment $color01 red
        set -gx fish_color_match --background=$color12 # --background brblue
        set -gx fish_color_selection $color07 white --bold --background=$color08 #brblack
        set -gx fish_color_search_match $color11 bryellow --background=$color08 #brblack
        set -gx fish_color_history_current --bold
        set -gx fish_color_operator $color14 brcyan
        set -gx fish_color_escape $color14 brcyan
        set -gx fish_color_cwd $color02 green
        set -gx fish_color_cwd_root $color01 red
        set -gx fish_color_valid_path --underline
        set -gx fish_color_autosuggestion $color08 brblack
        set -gx fish_color_user $color10 brgreen
        set -gx fish_color_host normal
        set -gx fish_color_cancel -r
        set -gx fish_pager_color_completion normal
        set -gx fish_pager_color_description $color03 yellow
        set -gx fish_pager_color_prefix normal --bold --underline
        set -gx fish_pager_color_progress $color15 brwhite --background=$color06 #cyan
        set -gx fish_pager_color_selected_background -r
        set -gx fish_color_option $color06 cyan
        set -gx fish_color_keyword $color04 blue
        set -gx fish_color_host_remote $color03 yellow
        set -gx fish_color_status $color01 red
    end

    __theme_apply_fish_shell_set_background "{{ colors.Background_Color.luma }}"
    # __theme_apply_fish_shell_create_vimrc_background {{scheme_slug}}
    set -g theme_apply_fish_theme {{scheme_slug}}

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
