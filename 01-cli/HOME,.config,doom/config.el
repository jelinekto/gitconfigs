;; Fonts
(setq doom-font (font-spec :family "Ubuntu Mono" :weight 'light :size 21)
      doom-variable-pitch-font (font-spec :family "Ubuntu" :weight 'light :size 21)
      doom-big-font (font-spec :family "Ubuntu" :weight 'light :size 48))

;; pywal theme
(add-to-list 'custom-theme-load-path "~/.config/doom")
(setq doom-theme 'ewal-doom-custom)

;; line numbering
(setq display-line-numbers-type 'relative)

;; org mode
(setq org-directory "~/Documents")
