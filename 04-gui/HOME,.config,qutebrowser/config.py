config.load_autoconfig(False)

# Basic settings
c.auto_save.interval = 2147483647
c.auto_save.session = False
c.content.autoplay = True
c.content.fullscreen.overlay_timeout = 0
c.content.fullscreen.window = False
c.content.pdfjs = True
c.logging.level.console = 'warning'
c.messages.timeout = 3000
c.qt.low_end_device_mode = 'always'
c.qt.process_model = 'process-per-site'
c.search.ignore_case = 'smart'
c.window.title_format = '{current_title}{title_sep}qutebrowser'
c.zoom.default = '100%'
c.zoom.levels = ["50%", "55%", "60%", "65%", "70%", "75%", "80%", "85%", "70%", "75%", "80%", "85%", "90%", "95%", "100%", "105%", "110%", "115%", "120%", "125%", "130%", "135%", "140%", "145%", "150%", "155%", "160%", "165%", "170%", "175%", "180%", "185%", "190%", "195%", "200%"]

# Privacy/security
# c.content.proxy = 'none'
# c.content.proxy = 'socks5://127.0.0.1:9050'
c.content.cache.size = 0
c.content.canvas_reading = False
c.content.cookies.accept = 'no-3rdparty'
c.content.cookies.store = True
c.content.dns_prefetch = False
c.content.headers.accept_language = 'en-US,en;q=0.5'
c.content.headers.custom = {"accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}
c.content.headers.do_not_track = False
c.content.headers.referer = 'same-domain'
c.content.headers.user_agent = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36'
c.content.images = True
c.content.javascript.enabled = False
c.content.local_content_can_access_file_urls = False
c.content.local_storage = True
c.content.private_browsing = True
c.content.ssl_strict = True
c.content.unknown_url_scheme_policy = 'allow-from-user-interaction'
c.content.webgl = False
c.content.webrtc_ip_handling_policy = 'disable-non-proxied-udp'
config.set('content.headers.user_agent', 'Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101 Firefox/68.0', '*://*.youtube.com/*')
config.set('content.local_content_can_access_file_urls', True, '*://*.pdfjs/*')

# Permissions
c.content.desktop_capture = 'ask'
c.content.geolocation = 'ask'
c.content.mouse_lock = 'ask'
c.content.notifications.enabled = 'ask'
c.content.persistent_storage = 'ask'
c.content.register_protocol_handler = False

# Content blocking
c.content.blocking.method = 'adblock'
c.content.blocking.adblock.lists = [
    "https://easylist.to/easylist/easylist.txt",
    "https://easylist.to/easylist/easyprivacy.txt",
    "https://easylist-downloads.adblockplus.org/fanboy-annoyance.txt",
    "https://easylist-downloads.adblockplus.org/abp-filters-anti-cv.txt",
    "https://raw.github.com/tomasko126/easylistczechandslovak/master/filters.txt",
    "https://secure.fanboy.co.nz/fanboy-antifacebook.txt",
    "https://git.stoutner.com/?p=UltraList.git;a=blob_plain;f=ultralist.txt",
    "https://git.stoutner.com/?p=UltraPrivacy.git;a=blob_plain;f=ultraprivacy.txt",
    "https://raw.githubusercontent.com/Spam404/lists/master/adblock-list.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/filters.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/annoyances.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/badware.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/privacy.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/resource-abuse.txt",
    "https://raw.githubusercontent.com/uBlockOrigin/uAssets/master/filters/unbreak.txt",
    "https://filters.adtidy.org/extension/ublock/filters/14.txt",
    "https://filters.adtidy.org/extension/ublock/filters/2_without_easylist.txt",
    "https://filters.adtidy.org/extension/ublock/filters/11.txt",
    "https://filters.adtidy.org/extension/ublock/filters/4.txt",
    "https://filters.adtidy.org/extension/ublock/filters/3.txt",
    "https://pgl.yoyo.org/adservers/serverlist.php?hostformat=adblockplus;showintro=0"
]
c.content.blocking.hosts.lists = []

# Tabs
c.new_instance_open_target = 'tab'
c.session.lazy_restore = True
c.tabs.last_close = 'blank'
c.tabs.mode_on_change = 'restore'
c.tabs.new_position.unrelated = 'next'
c.tabs.select_on_remove = 'prev'
c.url.default_page = 'about:blank'
c.url.start_pages = 'about:blank'
# c.url.start_pages = 'https://check.torproject.org'

# Downloads
c.downloads.location.directory = '~/Downloads'
c.downloads.location.remember = False

# Input
c.editor.command = ["urxvtc", "-name", "floating", "-e", "nvim" "{file}"]
c.hints.chars = 'asdfjkl;uiomrc'
c.input.forward_unbound_keys = 'none'
c.input.insert_mode.auto_load = True
c.input.insert_mode.plugins = True
c.input.partial_timeout = 2000
c.input.spatial_navigation = False
c.keyhint.delay = 500
c.keyhint.radius = 0
c.prompt.radius = 0
c.spellcheck.languages = ["en-GB", "cs-CZ"]

# Completion menu
c.completion.cmd_history_max_items = 100
c.completion.web_history.max_items = -1
c.completion.height = '45%'
c.completion.open_categories = ["bookmarks", "history", "searchengines"]
c.completion.quick = True
c.completion.scrollbar.width = 15
c.completion.show = 'always'
c.completion.shrink = True
c.completion.timestamp_format = '%d. %m. %Y'
c.completion.use_best_match = True
c.history_gap_interval = -1

# Bars
c.downloads.position = 'bottom'
c.scrolling.bar = 'overlay'
c.statusbar.padding = {"bottom": 0, "left": 3, "right": 3, "top": 1}
c.statusbar.show = 'always'
c.statusbar.widgets = ["keypress", "tabs", "history", "url", "scroll", "progress"]
c.tabs.favicons.scale = 1.0
c.tabs.indicator.padding = {"bottom": 0, "left": 0, "right": 0, "top": 0}
c.tabs.indicator.width = 0
c.tabs.max_width = 300
c.tabs.padding = {"bottom": 2, "left": 2, "right": 2, "top": 0}
c.tabs.position = 'left'
c.tabs.show = 'always'
c.tabs.show_switching_delay = 600
c.tabs.title.format = '{index}{audio}'
c.tabs.title.format_pinned = c.tabs.title.format
c.tabs.undo_stack_size = -1
c.tabs.width = 22

# Dark mode
# with open('/tmp/.wallpaper') as myfile:
#   if '-dark\n' in myfile.read():
#     c.colors.webpage.darkmode.enabled = True
#     c.colors.webpage.darkmode.algorithm = 'lightness-cielab'
#     c.colors.webpage.darkmode.contrast = 1.0
#     c.colors.webpage.darkmode.policy.images = 'smart'
#     c.colors.webpage.darkmode.policy.page = 'smart'
#     c.colors.webpage.darkmode.threshold.background = 0
#     c.colors.webpage.darkmode.threshold.text = 256

# Search engines
c.url.searchengines = {
  "DEFAULT": "{}",
  "g":    "https://www.startpage.com/do/search?q={}",
  "gi":   "https://www.startpage.com/do/search?cat=pics&q={}",
  "go":   "https://www.google.com/search?q={}",
  "d":    "https://html.duckduckgo.com/html?q={}",
  "b":    "https://www.bing.com/search?q={}",
  "rs":   "https://www.startpage.com/do/search?q=site%3Areddit.com+{}",
  "pcs":  "https://lite.duckduckgo.com/lite/?q=site%3Aprocyclingstats.com+{}",
  "ep":   "https://lite.duckduckgo.com/lite/?q=site%3Aeliteprospects.com+{}",
  "gh":   "https://lite.duckduckgo.com/lite/?q=site%3Agithub.com+{}",
  "aw":   "https://wiki.archlinux.org/index.php?search={}",
  "cw":   "https://cs.wikipedia.org/w/index.php?search={}",
  "w":    "https://en.wikipedia.org/w/index.php?search={}",
  "gw":   "https://wiki.gentoo.org/index.php?search={}",
  "z":    "https://gpo.zugaina.org/Search?search={}",
  "alp":  "https://pkgs.alpinelinux.org/packages?name=*{}*&branch=edge&arch=x86_64",
  "aur":  "https://aur.archlinux.org/packages/?O=0&SeB=nd&K={}&outdated=&SB=p&SO=d&PP=250&do_Search=Go",
  "r":    "https://old.reddit.com/r/{}",
  "f":    "https://www.facebook.com/search/top/?q={}&epa=SEARCH_BOX",
  "y":    "https://www.youtube.com/results?search_query={}",
  "ya":   "https://getyarn.io/yarn-find?text={}",
  "t":    "https://torrentz2.eu/search?f={}",
  "rt":   "https://rutracker.org/forum/search_cse.php?q={}",
  "tce":  "https://translate.google.com/#cs/en/{}",
  "tec":  "https://translate.google.com/#en/cs/{}",
  "ma":   "https://www.metal-archives.com/search?searchString={}&type=band_name",
  "csfd": "https://www.csfd.cz/hledat/?q={}",
  "fo":   "https://forvo.com/word/{}"
}

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
config.bind('ss', 'set-cmd-text -s :set')
## force https
config.bind('o', 'set-cmd-text -s :open -s')
config.bind('O', 'set-cmd-text -s :open -ts')
config.bind('p', 'open -s -- {clipboard}')
config.bind('P', 'open -ts -- {clipboard}')
## pass through some keys in normal mode
config.bind('<Return>', 'selection-follow;; fake-key <Return>')
config.bind('<Shift-Escape>', 'fake-key <Escape>')
config.bind('<Space>', 'fake-key <Space>')
config.bind('<Tab>', 'fake-key <Tab>')
config.bind('<Left>', 'fake-key <Left>')
config.bind('<Right>', 'fake-key <Right>')
config.bind('<Up>', 'fake-key <Up>')
config.bind('<Down>', 'fake-key <Down>')
## show/hide bars
config.bind('<Alt-b>', 'config-cycle statusbar.show always never;; config-cycle tabs.show always never')
## navigate page
config.bind('j', 'scroll-px 0 50')
config.bind('k', 'scroll-px 0 -50')
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
# caret
config.bind('v', 'mode-enter caret')
# hints
config.bind('t', 'hint')
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
config.bind('w', 'set-cmd-text -s :buffer')
config.unbind('d')
config.bind('dd', 'tab-close')
config.unbind('u')
config.bind('U', 'undo')
config.bind('<Ctrl-t>', 'set-cmd-text -ts :open -t')
config.bind('<Alt-0>', 'open -t about:blank')
config.bind('<Alt-9>', 'tab-focus 9')
config.bind('M', 'tab-mute')
## refresh
config.bind('R', 'reload')
config.bind('F5', 'reload')
config.bind('<Ctrl-r>', 'reload -f')
## bookmarking
config.bind('<b>', 'bookmark-add')
config.bind('<Shift-b>', 'bookmark-del')
## downloads
config.bind(',d', 'hint links download')
config.bind(',X', 'download-cancel')
config.bind(',c', 'download-clear')
config.bind(',o', 'download-open')
config.bind(',R', 'download-remove')
config.bind(',r', 'download-retry')
## address pseudo-bar
config.bind('e', 'set-cmd-text :open {url:pretty}')
config.bind('E', 'set-cmd-text :open -t {url:pretty}')
config.bind('<Ctrl-l>', 'set-cmd-text :open {url:pretty}')
config.bind('<Alt-d>', 'set-cmd-text :open {url:pretty}')
## translate site
config.unbind('T')
config.bind('tr', 'open -s https://translate.google.com/translate?hl=&sl=ru&tl=en&u={url:pretty}')
config.bind('Tr', 'open -ts https://translate.google.com/translate?hl=&sl=ru&tl=en&u={url:pretty}')
## white/blacklist sites
config.bind(';j', 'config-cycle --print --pattern *://*.{url:host}/* content.javascript.enabled;; reload')
config.bind(';i', 'config-cycle --print --pattern *://*.{url:host}/* content.images;; reload -f')
## Various
config.bind(';q', 'spawn --userscript /bin/sh -c "$TERMINAL_FLOATING -e nvim $QUTE_CONFIG_DIR/autoconfig.yml"')
config.bind(';m', 'spawn mpv {url}')
config.bind(';M', 'hint links spawn mpv {hint-url}')
config.bind(';f', 'message-info "{url:pretty} added to the RSS feeds list.";; spawn sh -c "grep -q {url:pretty} ~/.config/newsboat/urls || echo {url:pretty} >> ~/.config/newsboat/urls"')

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

# pywal colours
config.source('wal.py')
