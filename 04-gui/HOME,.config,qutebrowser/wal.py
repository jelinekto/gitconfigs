# Load pywal colours
## code yanked from gitlab.com/jjzmajic/qutewal
import json
import os
home = os.getenv('HOME')
colors_relative = '.cache/wal/colors.json'
daemon_relative = '.config/qutebrowser/qutewald.py'
colors_absolute = os.path.join(home, colors_relative)
daemon_absolute = os.path.join(home, daemon_relative)
if os.path.isfile(colors_absolute):
  with open(colors_absolute) as colorfile:
    colors = json.load(colorfile)
    cursor = colors['special']['cursor']
    background = colors['special']['background']
    foreground = colors['special']['foreground']
    black = colors['colors']['color0']
    white = colors['colors']['color7']
    gray = colors['colors']['color8']
    red = colors['colors']['color1']
    green = colors['colors']['color2']
    yellow = colors['colors']['color3']
    blue = colors['colors']['color4']
    magenta = colors['colors']['color5']
    cyan = colors['colors']['color6']
  ## category headers
  c.colors.completion.category.bg = gray
  c.colors.completion.category.border.bottom = background
  c.colors.completion.category.border.top = background
  c.colors.completion.category.fg = background
  ## completion entries
  c.colors.completion.even.bg = background
  c.colors.completion.odd.bg = background
  c.colors.completion.fg = foreground
  ## selected completion item
  c.colors.completion.item.selected.bg = cyan
  c.colors.completion.item.selected.border.bottom = background
  c.colors.completion.item.selected.border.top = background
  c.colors.completion.item.selected.fg = background
  ## matching text
  c.colors.completion.match.fg = yellow
  c.colors.completion.scrollbar.bg = background
  ## scroll bar
  c.colors.completion.scrollbar.fg = gray
  ## downloads
  c.colors.downloads.bar.bg = background
  c.colors.downloads.error.bg = gray
  c.colors.downloads.error.fg = background
  c.colors.downloads.stop.bg = cyan
  c.colors.downloads.system.bg = 'none'
  ## hints
  c.colors.hints.bg = background
  c.colors.hints.fg = foreground
  c.colors.hints.match.fg = background
  c.hints.border = '2px solid' + cyan
  ## keyhints
  c.colors.keyhint.bg = background
  c.colors.keyhint.fg = foreground
  c.colors.keyhint.suffix.fg = yellow
  ## messages
  c.colors.messages.error.bg = red
  c.colors.messages.error.border = red
  c.colors.messages.error.fg = background
  c.colors.messages.info.bg = blue
  c.colors.messages.info.border = blue
  c.colors.messages.info.fg = background
  c.colors.messages.warning.bg = red
  c.colors.messages.warning.border = red
  c.colors.messages.warning.fg = background
  ## prompts
  c.colors.prompts.bg = background
  c.colors.prompts.border = '2px solid ' + background
  c.colors.prompts.fg = foreground
  c.colors.prompts.selected.bg = cyan
  ## statusbar colour in different modes
  c.colors.statusbar.command.bg = background
  c.colors.statusbar.command.fg = foreground
  c.colors.statusbar.command.private.bg = background
  c.colors.statusbar.command.private.fg = foreground
  c.colors.statusbar.insert.bg = green
  c.colors.statusbar.insert.fg = background
  c.colors.statusbar.normal.bg = background
  c.colors.statusbar.normal.fg = foreground
  c.colors.statusbar.passthrough.bg = yellow
  c.colors.statusbar.passthrough.fg = background
  c.colors.statusbar.private.bg = background
  c.colors.statusbar.private.fg = foreground
  c.colors.statusbar.caret.bg = magenta
  c.colors.statusbar.caret.fg = background
  c.colors.statusbar.caret.selection.bg = magenta
  c.colors.statusbar.caret.selection.fg = background
  ## statusbar widgets
  c.colors.statusbar.progress.bg = cyan
  c.colors.statusbar.url.error.fg = red
  c.colors.statusbar.url.fg = background
  c.colors.statusbar.url.hover.fg = blue
  c.colors.statusbar.url.success.http.fg = gray
  c.colors.statusbar.url.success.https.fg = foreground
  c.colors.statusbar.url.warn.fg = red
  ## tabs bar
  c.colors.tabs.bar.bg = background
  c.colors.tabs.even.bg = background
  c.colors.tabs.even.fg = foreground
  c.colors.tabs.odd.bg = background
  c.colors.tabs.odd.fg = foreground
  c.colors.tabs.selected.even.bg = foreground
  c.colors.tabs.selected.even.fg = background
  c.colors.tabs.selected.odd.bg = foreground
  c.colors.tabs.selected.odd.fg = background
  c.colors.tabs.pinned.even.bg = cyan
  c.colors.tabs.pinned.odd.bg = cyan
  c.colors.tabs.pinned.selected.even.bg = foreground
  c.colors.tabs.pinned.selected.odd.bg = foreground
  c.colors.tabs.indicator.stop = background
  c.colors.tabs.indicator.start = green
  c.colors.tabs.indicator.error = red
  ## page backround
  # c.colors.webpage.bg = background
