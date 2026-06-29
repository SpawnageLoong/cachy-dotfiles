---------------------
---- WINDOWRULES ----
---------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

local suppressMaximizeRule = hl.window_rule({
	-- Ignore maximize requests from all apps. You'll probably like this.
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
suppressMaximizeRule:set_enabled(true)

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

-- Satty
hl.window_rule({
	name = "float-satty",
	match = { class = "com.gabm.satty" },
	float = true,
	center = true,
})

-- Firefox download window
hl.window_rule({
	name = "size-firefox-download",
	match = { title = "^.*(save to).*$" },
	float = true,
	center = true,
	size = { 900, 900 },
})

-- Extract with Ark
hl.window_rule({
	name = "size-ark-extract",
	match = { title = "^(Extract - Ark)$" },
	float = true,
	center = false,
	size = { 900, 900 },
})

-- Libreoffice save file
hl.window_rule({
	name = "size-libreoffice-save",
	match = {
		class = "soffice",
		title = "^(Save)$",
	},
	float = true,
	center = true,
	size = { 900, 720 },
})

-- Make file picker dialogs float
hl.window_rule({
	name = "float-file-picker",
	match = { class = "xdg-desktop-portal-gtk" },
	float = true,
	center = true,
	size = { 900, 900 },
})

-- imageviewer
hl.window_rule({
	name = "float-imageviewer",
	match = { class = "com.github.aliencoweatcake.imageviewer" },
	float = true,
	center = true,
	size = { 1920, 1354 },
})

-- VLC Media Player
hl.window_rule({
	name = "float-vlc",
	match = { title = "^(VLC media player)$" },
	float = true,
	center = true,
	size = { 2245, 1354 },
})
hl.window_rule({
	name = "no-focus-vlc",
	match = { class = "vlc" },
	no_initial_focus = true,
})

-- Wine
hl.window_rule({
	name = "float-wine",
	match = { title = "^(Wine Desktop)$" },
	float = true,
	center = true,
})

-- Steam Proton
hl.window_rule({
	name = "float-proton",
	match = { initial_class = "^(steam_proton)$" },
	float = true,
	center = true,
})

-- Gamescope
hl.window_rule({
	name = "float-gamescope",
	match = { initial_class = "^(gamescope)$" },
	float = true,
	center = true,
	size = { 1920, 1080 },
})

-- RPGMaker cicpoffs mount
hl.window_rule({
	name = "float-rpgm",
	match = { initial_class = "^.*(RPG Maker MV).*$" },
	float = true,
	center = true,
})

-- TiTS
hl.window_rule({
	name = "float-tits",
	match = { initial_class = "tits" },
	float = true,
})

-- Davinci Resolve
hl.window_rule({
	name = "no-focus-resolve",
	match = { class = "resolve" },
	no_initial_focus = true,
})
