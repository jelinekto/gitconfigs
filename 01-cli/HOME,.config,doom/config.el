;; Fonts
(setq doom-font (font-spec :family "Ubuntu Mono" :weight 'light :size 20)
      doom-variable-pitch-font (font-spec :family "Ubuntu" :weight 'light :size 20)
      doom-big-font (font-spec :family "Ubuntu" :weight 'light :size 40))

;; pywal theme
(add-to-list 'custom-theme-load-path "~/.config/doom")
(setq doom-theme 'ewal-doom-custom)

;; line numbering
(setq display-line-numbers-type 'relative)

;; indentation
(setq indent-tabs-mode nil)
(setq tab-width 2)

;; org mode
(setq org-directory "~/Documents")
