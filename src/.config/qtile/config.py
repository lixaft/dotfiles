# Qtile configuration file.
from __future__ import annotations

import os
import subprocess
from typing import Any

from libqtile import bar
from libqtile import hook
from libqtile import layout
from libqtile import widget
from libqtile.config import Click
from libqtile.config import Drag
from libqtile.config import Group
from libqtile.config import Key
from libqtile.config import Match
from libqtile.config import Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

# Path.
HOME = os.path.expanduser("~")
CONFIG = os.path.join(HOME, ".config/qtile")

# Theme.
BACKGROUND = "#1a1b26"
FOREGROUND = "#c0caf5"
BLACK = "#16161e"
GRAY = "#3b4261"
COMMENT = "#565f89"
BLUE = "#7aa2f7"
CYAN = "#7dcfff"
GREEN = "#9ece6a"
ORANGE = "#ff9e64"
MAGENTA = "#bb9af7"
PURPLE = "#9d7cd8"
RED = "#f7768e"
YELLOW = "#e0af68"

# Gui.
ICON_SIZE = 18

# Modifiers.
SUPER = "mod4"
CTRL = "control"
ALT = "mod1"
SHIFT = "shift"

# Click.
LEFT = "Button1"
MIDDLE = "Button2"
RIGHT = "Button3"

# Applications.
TERMINAL = guess_terminal("wezterm")
WEB_BROWSER = "brave-browser"

# Define the different group (aka workspace).
groups = [
    Group("1", label=""),
    Group("2", label="󰊯"),
    Group("3", label="󰎉"),
    Group("4", label="󰻞"),
    Group("5", label=""),
]

# Define general keys.
keys = [
    # Focus window.
    Key([SUPER], "h", lazy.layout.left(), desc="Focus left"),
    Key([SUPER], "l", lazy.layout.right(), desc="Focus right"),
    Key([SUPER], "j", lazy.layout.down(), desc="Focus down"),
    Key([SUPER], "k", lazy.layout.up(), desc="Focus up"),

    # Move window.
    Key([SUPER, SHIFT], "h", lazy.layout.shuffle_left(), desc="Move left"),
    Key([SUPER, SHIFT], "l", lazy.layout.shuffle_right(), desc="Move right"),
    Key([SUPER, SHIFT], "j", lazy.layout.shuffle_down(), desc="Move down"),
    Key([SUPER, SHIFT], "k", lazy.layout.shuffle_up(), desc="Move up"),

    # Resize window.
    Key([SUPER, CTRL], "h", lazy.layout.grow_left(), desc="Grow left"),
    Key([SUPER, CTRL], "l", lazy.layout.grow_right(), desc="Grow right"),
    Key([SUPER, CTRL], "j", lazy.layout.grow_down(), desc="Grow down"),
    Key([SUPER, CTRL], "k", lazy.layout.grow_up(), desc="Grow up"),
    Key([SUPER], "n", lazy.layout.normalize(), desc="Reset all sizes"),
    Key([SUPER, SHIFT], "Return", lazy.layout.toggle_split()),

    # Spawn process.
    Key([SUPER, CTRL], "q", lazy.spawn("powermenu"), desc="Power menu"),
    Key([SUPER], "Return", lazy.spawn(TERMINAL), desc="Launch terminal"),
    Key([SUPER], "r", lazy.spawn("launcher"), desc="Application launcher"),
    Key([SUPER], "s", lazy.spawn("nitrogen --set-zoom-fill --random")),
    Key([CTRL], "Print", lazy.spawn("peek"), desc="Record screen"),
    Key([], "Print", lazy.spawn("flameshot gui"), desc="Take screenshot"),

    # Layouts.
    Key([SUPER], "Tab", lazy.next_layout(), desc="Cycle layouts"),
    Key([SUPER], "f", lazy.window.toggle_fullscreen(), desc="Full screen"),

    # Miscellaneous.
    Key([SUPER], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([SUPER, CTRL], "r", lazy.reload_config(), desc="Reload the config"),
]

# Define group related keys.
for _g in groups:
    keys.extend([
        Key(
            [SUPER],
            _g.name,
            lazy.group[_g.name].toscreen(),
            desc=f"Switch to group {_g.name}",
        ),
        Key(
            [SUPER, SHIFT],
            _g.name,
            lazy.window.togroup(_g.name, switch_group=True),
            desc=f"Switch to & move focused window to group {_g.name}",
        ),
        Key(
            [SUPER, ALT],
            _g.name,
            lazy.window.togroup(_g.name, switch_group=False),
            desc="move focused window to group {group.name}",
        ),
    ])

# Define mouse actions.
mouse = [
    Drag(
        [SUPER],
        "Button1",
        lazy.window.set_position_floating(),
        start=lazy.window.get_position(),
    ),
    Click(
        [SUPER],
        "Button2",
        lazy.window.bring_to_front(),
    ),
    Drag(
        [SUPER],
        "Button3",
        lazy.window.set_size_floating(),
        start=lazy.window.get_size(),
    ),
]

# Define available layouts.
layouts = [
    layout.Columns(border_width=1, border_focus=BLUE, border_normal=GRAY),
    layout.Max(),
]

# Bar configuration.
widget_defaults = {
    "font": "FiraCode Nerd Font",
    "foreground": FOREGROUND,
    "fontsize":  12,
    "padding":  5,
}
extension_defaults = widget_defaults.copy()

_graph_defaults = {
    "border_width": 0,
    "line_width": 1,
    "type": "line",
    "margin_y": 12,
}


def _sep(**kwargs: Any) -> widget.Sep:
    return widget.Sep(
        padding=36,
        size_percent=40,
        linewidth=1,
        foreground=COMMENT,
        **kwargs,
    )


def _icon(s: str, color: str, **kwargs: Any) -> widget.TextBox:
    return widget.TextBox(s, foreground=color, fontsize=ICON_SIZE, **kwargs)


_widgets = [
    widget.Spacer(length=16),
    _icon("󱇙", MAGENTA, mouse_callbacks={LEFT: lazy.spawn("launcher")}),
    _sep(),
    widget.GroupBox(
        fontsize=ICON_SIZE,
        disable_drag=True,
        active=FOREGROUND,
        inactive=COMMENT,
        block_highlight_text_color=CYAN,
        highlight_method="block",
        this_current_screen_border=BACKGROUND,
        borderwidth=1,
    ),
    _sep(),
    _icon("󰍛", YELLOW),
    widget.CPU(format="{load_percent}%"),
    widget.CPUGraph(graph_color=YELLOW, **_graph_defaults),
    _icon("", BLUE),
    widget.Memory(format="{MemPercent}%"),
    widget.MemoryGraph(graph_color=BLUE, **_graph_defaults),
    widget.Spacer(length=bar.STRETCH),

    _icon("󱑎", RED),
    widget.Clock(format="%A, %d %B at %H:%M"),

    widget.Spacer(length=bar.STRETCH),
    _icon("", MAGENTA),
    widget.Net(format="{down}/s", prefix="M"),
    _sep(),
    _icon("󰏗", PURPLE),
    widget.CheckUpdates(
        distro="Ubuntu",
        initial_text="0",
        no_update_string="0",
        display_format="{updates}",
    ),
    _icon("󰕾", BLUE),
    widget.PulseVolume(limit_max_volume=True),
    _sep(),
    _icon("", GREEN),
    widget.CurrentLayout(),
    _sep(),
    _icon("󰐥", CYAN, mouse_callbacks={LEFT: lazy.spawn("powermenu")}),
    widget.Spacer(length=16),
]

screens = [
    Screen(top=bar.Bar(_widgets, size=36, background=BACKGROUND, opacity=0.8)),
]

# Fore floating layout for the following window.
# Run the `xprop` utility to see the wm class and name of an X client.
floating_layout = layout.Floating(
    float_rules=[
        *layout.Floating.default_float_rules,
        # gitk
        Match(wm_class="confirmreset"),
        Match(wm_class="makebranch"),
        Match(wm_class="maketag"),
        Match(title="branchdialog"),
        # ssh-askpass
        Match(wm_class="ssh-askpass"),
        # GPG key password entry
        Match(title="pinentry"),
    ],
)

# Define behavior.
auto_fullscreen = True
auto_minimize = True
follow_mouse_focus = False


# Hooks.
def _run_hook(name: str) -> None:
    subprocess.run(("bash", os.path.join(CONFIG, "hooks", name + ".sh")))


@hook.subscribe.startup_once
async def _() -> None:
    _run_hook("startup_once")


@hook.subscribe.screen_change
async def _() -> None:
    _run_hook("screen_change")
