function __theme_apply_fish_shell_set_background -d "theme-apply-fish-shell private function to check if theme is dark or light"
    set luma $argv[1]

    # luma value range goes from 0 to 255
    # where 0 is darkest and 255 lightest
    if test $luma -lt 128
        set -gx theme_apply_fish_shell_background dark
    else
        set -gx theme_apply_fish_shell_background light
    end
end
