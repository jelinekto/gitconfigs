config.load_autoconfig(True)

# Permanent incognito mode
c.auto_save.session = False
# c.content.private_browsing = True

# Privacy
c.content.cache.size = 0
c.content.canvas_reading = False
c.content.cookies.accept = 'no-3rdparty'
c.content.dns_prefetch = False
c.content.headers.referer = 'same-domain'
c.content.hyperlink_auditing = False
c.content.javascript.enabled = False
c.content.webgl = False
c.content.webrtc_ip_handling_policy = 'disable-non-proxied-udp'

# Window
c.content.fullscreen.overlay_timeout = 0
c.content.fullscreen.window = True
c.window.title_format = '{current_title}{title_sep}qutebrowser'

# Enable pdf viewer
c.content.pdfjs = True

# Site permissions
c.content.register_protocol_handler = False
c.content.notifications.presenter = 'messages'

# Tabs behaviour
c.session.lazy_restore = True
c.tabs.mode_on_change = 'restore'
c.tabs.new_position.unrelated = 'next'
c.tabs.select_on_remove = 'prev'

# Homepage
c.url.default_page = 'about:blank'
c.url.start_pages = 'about:blank'

# Downloads
c.downloads.location.directory = '~/Downloads'

# Input
c.editor.command = ["foot", "-T", "float", "-w", "900x600", "nvim", "{file}"]
c.hints.chars = 'asdfjkl;uiomrc'
c.input.insert_mode.auto_load = True
c.input.insert_mode.plugins = True
c.input.partial_timeout = 2000
c.keyhint.radius = 0
c.prompt.radius = 0
c.spellcheck.languages = ["en-GB", "cs-CZ"]

# Completion menu
c.completion.cmd_history_max_items = 300
c.completion.height = '40%'
c.completion.open_categories = ["history", "bookmarks", "filesystem"]
c.completion.shrink = True
c.completion.use_best_match = True
c.completion.web_history.max_items = -1
c.history_gap_interval = -1

# Zoom
c.zoom.levels = ["50%", "55%", "60%", "65%", "70%", "75%", "80%", "85%", "70%", "75%", "80%", "85%", "90%", "95%", "100%", "105%", "110%", "115%", "120%", "125%", "130%", "135%", "140%", "145%", "150%", "155%", "160%", "165%", "170%", "175%", "180%", "185%", "190%", "195%", "200%"]

# Content blocking
c.content.blocking.method = 'both'
c.content.blocking.adblock.lists = [
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/badware.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/privacy.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/resource-abuse.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/unbreak.txt",
    "https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_2_English/filter.txt",
    "https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_11_Mobile/filter.txt",
    "https://easylist.to/easylist/easylist.txt",
    "https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_3_Spyware/filter.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    # "https://curben.gitlab.io/malware-filter/urlhaus-filter.txt",
    "https://raw.githubusercontent.com/Spam404/lists/master/adblock-list.txt",
    "https://raw.githubusercontent.com/Spam404/lists/master/main-blacklist.txt",
    "https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_14_Annoyances/filter.txt",
    "https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_4_Social/filter.txt",
    "https://secure.fanboy.co.nz/fanboy-antifacebook.txt",
    "https://secure.fanboy.co.nz/fanboy-cookiemonster.txt",
    "https://secure.fanboy.co.nz/fanboy-annoyance_ubo.txt",
    "https://secure.fanboy.co.nz/fanboy-social.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/annoyances.txt",
    "https://someonewhocares.org/hosts/hosts",
    "https://winhelp2002.mvps.org/hosts.txt",
    "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=adblockplus;showintro=0",
    "https://raw.github.com/tomasko126/easylistczechandslovak/master/filters.txt",
    "https://raw.githubusercontent.com/AdguardTeam/FiltersRegistry/master/filters/filter_17_TrackParam/filter.txt",
    "https://www.fanboy.co.nz/enhancedstats.txt",
    "https://raw.githubusercontent.com/DandelionSprout/adfilt/master/LegitimateURLShortener.txt",
    "https://secure.fanboy.co.nz/fanboy-antifonts.txt",
]

# Bars
c.downloads.position = 'bottom'
c.statusbar.show = 'never'
c.statusbar.widgets = ["keypress", "tabs", "history", "url", "scroll", "progress"]
c.tabs.indicator.width = 0
c.tabs.position = 'left'
c.tabs.show = 'never'
c.tabs.show_switching_delay = 600
c.tabs.undo_stack_size = -1
c.tabs.width = 350

# Search engines
c.url.searchengines = {
  "DEFAULT": "{}",
  "s":    "http://127.0.0.1:8888/search?q={}",
  "si":   "http://127.0.0.1:8888/search?q=!images+{}",
  "q":    "https://lite.qwant.com/?s=0&vt=1&q={}",
  "qi":   "https://lite.qwant.com/?s=0&vt=1&t=images&q={}",
  "d":    "https://duckduckgo.com/?kae=-1&kp=-2&kav=1&k1=-1&kk=-1&kaj=m&kay=b&kak=-1&kax=-1&kaq=-1&kap=-1&kao=-1&kau=-1&kad=en_US&kac=-1&kt=n&k18=1&ka=n&q={}",
  "di":   "https://duckduckgo.com/?kae=-1&kp=-2&kav=1&k1=-1&kk=-1&kaj=m&kay=b&kak=-1&kax=-1&kaq=-1&kap=-1&kao=-1&kau=-1&kad=en_US&kac=-1&kt=n&k18=1&ka=n&ia=images&iax=images&q={}",
  "a":    "https://www.wolframalpha.com/input/?i={}",
  "g":    "https://www.google.com/search?q={}",
  "b":    "https://www.bing.com/search?q={}",
  "rs":   "https://www.reddit.com/search/?q={}",
  "pcs":  "https://lite.qwant.com/?s=0&vt=1&q=site%3Aprocyclingstats.com+{}",
  "ep":   "https://lite.qwant.com/?s=0&vt=1&q=site%3Aeliteprospects.com+{}",
  "gh":   "https://lite.qwant.com/?s=0&vt=1&q=site%3Agithub.com+{}",
  "gl":   "https://lite.qwant.com/?s=0&vt=1&q=site%3Agitlab.com+{}",
  "aw":   "https://wiki.archlinux.org/index.php?search={}",
  "cw":   "https://cs.wikipedia.org/w/index.php?search={}",
  "w":    "https://en.wikipedia.org/w/index.php?search={}",
  "gw":   "https://wiki.gentoo.org/index.php?search={}",
  "z":    "https://gpo.zugaina.org/Search?search={}",
  "alp":  "https://pkgs.alpinelinux.org/packages?name=*{}*&branch=edge&arch=x86_64",
  "aur":  "https://aur.archlinux.org/packages/?O=0&SeB=nd&K={}&outdated=&SB=p&SO=d&PP=250&do_Search=Go",
  "r":    "https://www.reddit.com/r/{}",
  "f":    "https://www.facebook.com/search/top/?q={}&epa=SEARCH_BOX",
  "y":    "https://www.youtube.com/results?search_query={}",
  "ya":   "https://getyarn.io/yarn-find?text={}",
  "rt":   "https://rutracker.org/forum/search_cse.php?q={}",
  "t":    "https://www.deepl.com/translator#en/cs/{}",
  "ma":   "https://www.metal-archives.com/search?searchString={}&type=band_name",
  "csfd": "https://www.csfd.cz/hledat/?q={}",
  "fo":   "https://forvo.com/word/{}",
}

# Key bindings
## get rid of some annoying defaults
config.unbind('<Ctrl-q>')
config.unbind('q')
config.unbind('<Ctrl-h>')
config.unbind('r')
## general convenience bindings
config.bind('<Escape>', 'clear-messages;; clear-keychain;; search')
config.bind('<Alt-Shift-r>', 'spawn sh -c "pkill qutebrowser && exec qutebrowser"')
config.bind('<Alt-r>', 'config-source;; message-info "Config file sourced."')
config.bind('cc', 'edit-text')
config.bind('<Shift-s>', 'set-cmd-text -s :set')
## show/hide tabs bar
config.bind('s', 'config-cycle statusbar.show always never')
config.bind('t', 'config-cycle tabs.show always never')
## modes
# insert
config.bind('a', 'mode-enter insert')
config.bind('A', 'mode-enter insert')
config.bind('i', 'mode-enter insert')
config.bind('<Shift-Escape>', 'fake-key <Escape>', mode='insert')
config.bind('<Ctrl-a>', 'fake-key <Home>', mode='insert')
config.bind('<Ctrl-e>', 'fake-key <End>', mode='insert')
config.bind('<Ctrl-f>', 'fake-key <Right>', mode='insert')
config.bind('<Ctrl-b>', 'fake-key <Left>', mode='insert')
config.bind('<Alt-f>', 'fake-key <Ctrl-Right>', mode='insert')
config.bind('<Alt-b>', 'fake-key <Ctrl-Left>', mode='insert')
config.bind('<Ctrl-n>', 'fake-key <Down>', mode='insert')
config.bind('<Ctrl-p>', 'fake-key <Up>', mode='insert')
config.bind('<Ctrl-d>', 'fake-key <Delete>', mode='insert')
config.bind('<Alt-d>', 'fake-key <Ctrl-Delete>', mode='insert')
config.bind('<Alt-Backspace>', 'fake-key <Ctrl-Backspace>', mode='insert')
config.bind('<Alt-n>', 'edit-text', mode='insert')
config.bind('<Ctrl-y>', 'insert-text {clipboard}', mode='insert')
# passthrough
config.unbind('<Ctrl-v>')
config.bind('<Alt-Space>', 'mode-enter passthrough')
config.unbind('<Shift-Escape>', mode='passthrough')
config.bind('<Alt-Space>', 'mode-enter normal', mode='passthrough')
# caret
config.bind('v', 'mode-enter caret')
# hints
config.bind('I', 'hint inputs')
## history
config.bind('L', 'forward')
config.bind('H', 'back')
## zoom
config.bind('=', 'zoom-in')
config.bind('-', 'zoom-out')
config.bind('+', 'zoom')
## tabs
config.bind('K', 'tab-prev')
config.bind('J', 'tab-next')
config.bind('m', 'tab-move')
config.bind('<Alt-j>', 'tab-move +')
config.bind('<Alt-k>', 'tab-move -')
config.bind('C', 'tab-clone')
config.bind('w', 'set-cmd-text -s :tab-select')
config.unbind('d')
config.bind('dd', 'tab-close')
config.unbind('u')
config.bind('U', 'undo')
config.bind('<Ctrl-t>', 'set-cmd-text -s :open -t')
config.bind('<Alt-0>', 'open -t about:blank')
config.bind('<Alt-9>', 'tab-focus 9')
config.bind('M', 'tab-mute')
## refresh
config.bind('R', 'reload -f')
config.bind('F5', 'reload')
config.bind('<Ctrl-r>', 'reload')
## bookmarking
config.bind('<b>', 'bookmark-add')
config.bind('<Shift-b>', 'bookmark-del')
## downloads
config.bind(',d', 'hint links download')
config.bind(',X', 'download-cancel')
config.bind(',c', 'download-clear')
config.bind(',o', 'download-open')
config.bind(',r', 'download-remove')
config.bind(',R', 'download-retry')
## address pseudo-bar
config.bind('e', 'set-cmd-text :open {url:pretty}')
config.bind('E', 'set-cmd-text :open -t {url:pretty}')
config.bind('<Ctrl-l>', 'set-cmd-text :open {url:pretty}')
config.bind('<Alt-d>', 'set-cmd-text :open {url:pretty}')
## white/blacklist sites
config.bind(';j', 'config-cycle --print --pattern *://*.{url:host}/* content.javascript.enabled;; reload')
config.bind(';i', 'config-cycle --print --pattern *://*.{url:host}/* content.images;; reload -f')
## External apps/scripts
config.bind(';m', 'spawn mpv {url}')
config.bind(';M', 'hint links spawn mpv {hint-url}')
config.bind('<Alt-Shift-p>', 'spawn --userscript qute-pass')
config.bind('<Alt-o>', 'spawn --userscript qute-pass --username-only')
config.bind('<Alt-p>', 'spawn --userscript qute-pass --password-only')
config.bind('<Alt-Shift-p>', 'spawn --userscript qute-pass', mode='insert')
config.bind('<Alt-o>', 'spawn --userscript qute-pass --username-only', mode='insert')
config.bind('<Alt-p>', 'spawn --userscript qute-pass --password-only', mode='insert')

# Aliases
c.aliases = {
  "q": "tab-close",
  "q!": "quit",
  "w": "session-save",
  "up": "session-save",
  "wq": "quit --save",
  "x": "quit --save",
  "s": "open -t about:blank;; set"
}

# Low level behaviour
c.content.prefers_reduced_motion = True
c.logging.level.console = 'warning'

# Fonts
monospace = '14pt Ubuntu Mono'
bmonospace = 'bold 14pt Ubuntu Mono'
regular = '12pt Ubuntu Bold'
c.fonts.completion.category = monospace
c.fonts.completion.entry = monospace
c.fonts.debug_console = monospace
c.fonts.downloads = regular
c.fonts.hints = bmonospace
c.fonts.keyhint = regular
c.fonts.messages.error = regular
c.fonts.messages.info = regular
c.fonts.messages.warning = regular
c.fonts.prompts = regular
c.fonts.statusbar = regular
c.fonts.tabs.selected = regular
c.fonts.tabs.unselected = regular

# Load pywal colours
## gitlab.com/jjzmajic/qutewal
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
  c.colors.webpage.bg = background
