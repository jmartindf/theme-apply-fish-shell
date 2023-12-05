# Theme Apply Fish Shell

See the [base16-fish-shell](https://github.com/FabioAntunes/base16-fish-shell) for more information, history, and background.

A pure fish shell solution to change your shell's default ANSI colours.

## Use Cases

* You prefer to use a script instead of a terminal emulator theme to colour your shell.
* You use this script to have different colour schemes appear on different SSH sessions.

## Installation

With [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
```fish
omf install https://git.desertflood.com/jmartindf/theme-apply-fish-shell
```

With [fisher](https://github.com/jorgebucaran/fisher)

```shell
fisher install jmartindf/theme-apply-fish-shell
```

Open a new shell and type `theme-apply` followed by a tab to perform tab completion.

## Features

* Pure fish solution, no need to source bash functions.
* Sets one universal variable with the current theme. Whenever a new interactive session has started, a function in conf.d will apply the theme's function.
* Luma calculation, a global variable `theme_apply_fish_shell_background` is set with the background. Possible values are `dark` or `light`
Base16-vim support

### Fish Shell
Fish shell has universal variables with colours. These universal variables are responsible for the theme of the prompt. You can see your current colours and modify them using the interactive webpage using the command `fish_config`

When you select a scheme, theme-apply-fish-shell will shadow the universal variables with global variables. If you prefer not to change the fish prompt colours, you can disable this by running the following:

```shell
set -U theme_apply_fish_shell_disable_prompt_colors true
```

This will only disable things like colours for autocompletions, errors, commands, strings.

Here's the complete list of the colours modified by the scripts:
```
fish_color_normal
fish_color_command
fish_color_quote
fish_color_redirection
fish_color_end
fish_color_error
fish_color_param
fish_color_comment
fish_color_match
fish_color_selection
fish_color_search_match
fish_color_history_current
fish_color_operator
fish_color_escape
fish_color_cwd
fish_color_cwd_root
fish_color_valid_path
fish_color_autosuggestion 
fish_color_user
fish_color_host
fish_color_cancel
fish_pager_color_completion
fish_pager_color_description
fish_pager_color_prefix
fish_pager_color_progress 
```

## Troubleshooting

Run the included colour test option and check that your colour assignments appear correct. If your terminal does not support the setting of colours within the 256 colour space (e.g. Apple Terminal), colours 17 to 21 will appear blue.

![setting 256 colourspace not supported](https://raw.github.com/chriskempson/base16-shell/master/setting-256-colourspace-not-supported.png)

To run the test, pass the flag `-t` or `--test` to any theme functions. 

```shell
theme-apply-solarflare -t
```

![Screenshot 2020-03-19 at 18 41 56](https://user-images.githubusercontent.com/2544673/77102790-50c07580-6a11-11ea-85e6-d88ba956d56d.png)


### Inverted blacks and whites

This is the expected behaviour when using a light theme:
https://github.com/chriskempson/base16-shell/issues/150
