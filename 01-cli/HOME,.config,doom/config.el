;; Fonts
(setq doom-font (font-spec :family "Ubuntu Mono" :weight 'light :size 20)
      doom-variable-pitch-font (font-spec :family "Ubuntu" :weight 'light :size 20)
      doom-big-font (font-spec :family "Ubuntu" :weight 'light :size 40))

;; behaviour
(setq confirm-kill-emacs nil)
(setq treemacs-show-cursor t)

;; pywal theme
(add-to-list 'custom-theme-load-path "~/.config/doom")
(setq doom-theme 'ewal-doom-custom)

;; line numbering
(setq display-line-numbers-type 'relative)

;; indentation
(setq indent-tabs-mode nil)
(setq tab-width 2)

;; modeline
(setq doom-modeline-enable-word-count t)

;; org mode
(setq org-directory "~/Documents")

;; custom key bindings
;; movement
(define-key evil-normal-state-map (kbd "M-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "M-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "M-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "M-l") 'evil-window-right)
(define-key evil-normal-state-map (kbd "M-H") 'evil-window-move-far-left)
(define-key evil-normal-state-map (kbd "M-J") 'evil-window-move-very-bottom)
(define-key evil-normal-state-map (kbd "M-K") 'evil-window-move-very-top)
(define-key evil-normal-state-map (kbd "M-L") 'evil-window-move-far-right)
;; open and close windows/buffers
(define-key evil-normal-state-map (kbd "M-o") 'evil-window-vsplit)
(define-key evil-normal-state-map (kbd "M-O") 'evil-window-split)
(define-key evil-normal-state-map (kbd "M-c") 'evil-window-delete)
(define-key evil-normal-state-map (kbd "M-C") 'kill-current-buffer)
;; switch buffers
(define-key evil-normal-state-map (kbd "M-w") 'counsel-switch-buffer)
(define-key evil-normal-state-map (kbd "M-b") 'next-buffer)
(define-key evil-normal-state-map (kbd "M-B") 'previous-buffer)
;; resize windows
(define-key evil-normal-state-map (kbd "M-[") 'evil-window-decrease-width)
(define-key evil-normal-state-map (kbd "M-]") 'evil-window-increase-width)
(define-key evil-normal-state-map (kbd "M-{") 'evil-window-decrease-height)
(define-key evil-normal-state-map (kbd "M-}") 'evil-window-increase-height)
;; treemacs
(define-key evil-normal-state-map (kbd "M-t") 'treemacs)
