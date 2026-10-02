-- Shared Hyprland configuration. Select a device with the
-- ~/.config/hypr/device-hyprland.lua symlink.
require("device-hyprland")

local terminal = "kitty"
local fileManager = "thunar"
local menu = "rofi -show drun"
local lock = "hyprlock"
local browser = "firefox" -- Reserved for the optional browser bind.

hl.on("hyprland.start", function()
    for _, command in ipairs({
        "fcitx5",
        "waybar",
        "hyprpaper",
        "hypridle",
        "blueman-applet",
        "/usr/bin/gnome-keyring-daemon --start --components=secrets",
        "/usr/lib/polkit-kde-authentication-agent-1",
        "wl-paste --watch cliphist store",
        "mako",
    }) do
        hl.exec_cmd(command)
    end
end)

hl.env("XCURSOR_THEME", "pacman")
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRSHOT_DIR", os.getenv("HOME") .. "/Pictures/Screenshots")

hl.config({
    general = {
        gaps_in = 2,
        gaps_out = 4,
        border_size = 3,
        col = {
            active_border = {
                colors = { "rgb(89f336)", "rgb(ff8000)" },
                angle = 45,
            },
            inactive_border = {
                colors = { "rgb(6b6b00)", "rgb(6b3c00)" },
                angle = 45,
            },
        },
        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 10,
        active_opacity = 0.7,
        inactive_opacity = 0.6,
        blur = {
            enabled = true,
            size = 3,
            passes = 4,
            vibrancy = 0.1696,
        },
    },
    animations = {
        enabled = true,
    },
    dwindle = {
        preserve_split = true,
    },
    master = {
        new_status = "master",
    },
    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = false,
        enable_swallow = true,
        swallow_regex = "^(kitty)$",
    },
    input = {
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = true,
            scroll_factor = 0.3,
        },
    },
    gestures = {
        workspace_swipe_touch = true,
        workspace_swipe_distance = 200,
        workspace_swipe_cancel_ratio = 0.4,
        workspace_swipe_create_new = true,
    },
})

hl.curve("myBezier", {
    type = "bezier",
    points = { { 0.05, 0.9 }, { 0.1, 1.05 } },
})
hl.animation({ leaf = "windows", enabled = true, speed = 7, bezier = "myBezier" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 7, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 8, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 7, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "default" })

hl.device({ name = "epic-mouse-v1", sensitivity = -0.5 })
for _, fingers in ipairs({ 3, 4 }) do
    hl.gesture({ fingers = fingers, direction = "horizontal", action = "workspace" })
end

local mainMod = "SUPER"
local homeBin = os.getenv("HOME") .. "/.local/bin/"

hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + Escape", hl.dsp.exit())
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd(homeBin .. "toggle_float_center"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized" }))

hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd(lock))
-- hl.bind(mainMod .. " + F", hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("hyprshot -m region"))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("hyprshot -m output --clipboard-only"))

for _, direction in ipairs({
    { key = "H", value = "l" },
    { key = "L", value = "r" },
    { key = "K", value = "u" },
    { key = "J", value = "d" },
}) do
    hl.bind(mainMod .. " + " .. direction.key, hl.dsp.focus({ direction = direction.value }))
end

for workspace = 1, 10 do
    local key = tostring(workspace % 10)
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = workspace }))
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = workspace }))
end

for _, special in ipairs({
    { key = "A", name = "magic1" },
    { key = "S", name = "magic2" },
    { key = "D", name = "magic3" },
}) do
    hl.bind(mainMod .. " + " .. special.key, hl.dsp.workspace.toggle_special(special.name))
    hl.bind(mainMod .. " + SHIFT + " .. special.key,
        hl.dsp.window.move({ workspace = "special:" .. special.name }))
end

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind("Home", hl.dsp.exec_cmd([[sh -c 'mkdir -p "$HOME/Pictures/screenshots" && grim - | tee "$HOME/Pictures/screenshots/screenshot-$(date +%s).png" | wl-copy']]))
hl.bind("End", hl.dsp.exec_cmd([[sh -c 'mkdir -p "$HOME/Pictures/screenshots" && grim -g "$(slurp)" - | tee "$HOME/Pictures/screenshots/screenshot-$(date +%s).png" | wl-copy']]))
hl.bind("Insert", hl.dsp.exec_cmd(homeBin .. "screen-record"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd(homeBin .. "clipboard-list"))
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd(homeBin .. "hspool"))
hl.bind(mainMod .. " + SHIFT + I", hl.dsp.exec_cmd(homeBin .. "hspool --browser"))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Former bindel: active while locked and repeating while held.
for _, media in ipairs({
    { "XF86AudioRaiseVolume", "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+" },
    { "XF86AudioLowerVolume", "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-" },
    { "XF86AudioMute", "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle" },
    { "XF86AudioMicMute", "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle" },
    { "XF86MonBrightnessUp", "brightnessctl s 10%+" },
    { "XF86MonBrightnessDown", "brightnessctl s 10%-" },
}) do
    hl.bind(media[1], hl.dsp.exec_cmd(media[2]), { locked = true, repeating = true })
end

-- Former bindl: active while locked.
for _, media in ipairs({
    { "XF86AudioNext", "playerctl next" },
    { "XF86AudioPause", "playerctl play-pause" },
    { "XF86AudioPlay", "playerctl play-pause" },
    { "XF86AudioPrev", "playerctl previous" },
}) do
    hl.bind(media[1], hl.dsp.exec_cmd(media[2]), { locked = true })
end
hl.bind("switch:off:Lid Switch", hl.dsp.exec_cmd("hyprlock --immediate"), { locked = true })

hl.layer_rule({ match = { namespace = "^rofi$" }, blur = true })

for _, class in ipairs({
    "^(firefox)$",
    "^(steam)$",
    "^(steam_app_.*)$",
    "^(chromium)$",
    "^(google-chrome)$",
    "^(brave-browser)$",
    "^(obs)$",
    [[^(com\.obsproject\.Studio)$]],
    "^(mpv)$",
    "^(imv)$",
}) do
    hl.window_rule({ match = { class = class }, opacity = "1.0 override 1.0 override" })
end
hl.window_rule({ match = { class = "^(spotify)$" }, opacity = "0.50 override 0.40 override" })
