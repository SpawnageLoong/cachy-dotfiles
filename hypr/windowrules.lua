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

-- nmrs-ui
hl.window_rule({
	name = "float-nmrs",
	match = { class = "org.nmrs.ui" },
	float = true,
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
	center = true,
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
