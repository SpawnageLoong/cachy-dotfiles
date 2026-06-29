source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    # smth smth
end

# Aliases
alias hyprconf="nvim ~/.config/hypr/hyprland.lua"
alias hyprbinds="nvim ~/.config/hypr/keybinds.lua"
alias hyprenv="nvim ~/.config/hypr/env.lua"
alias hyprwindows="nvim ~/.config/hypr/windowrules.lua"
alias hyprmons="nvim ~/.config/hypr/monitors.lua"
alias hyprinput="nvim ~/.config/hypr/input.lua"
alias hyprspaces="nvim ~/.config/hypr/workspaces.lua"
alias waybarconf="nvim ~/.config/waybar/config.jsonc"
alias reload-waybar="killall -SIGUSR2 waybar"
alias fishconf="nvim ~/.config/fish/config.fish"

alias pfx-proton="~/.local/bin/run-with-proton.sh"
alias pfx-gamescope="~/.local/bin/run-with-gamescope.sh"

oh-my-posh init fish --config ~/.config/oh-my-posh/takuya-venv.omp.json | source
