;; startup performance
(setq gc-cons-threshold (* 50 1000 1000))

;; profile Emacs startup
(add-hook 'emacs-startup-hook
  (lambda ()
    (message "*** Emacs loaded in %s with %d garbage collections."
      (format "%.2f seconds"
        (float-time
        (time-subtract after-init-time before-init-time)))
      gcs-done)))

;; native-comp
(setq native-comp-async-report-warnings-errors nil)
(add-to-list 'native-comp-eln-load-path (expand-file-name "eln-cache/" user-emacs-directory))

;; start server
(load "server")
(unless (server-running-p)
  (server-start))

;; bootstrap straight.el package manager
(defvar bootstrap-version)
(let ((bootstrap-file
      (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
        "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
        'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; use straight.el by default
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)
(require 'straight-x)

;; hide UI elements
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)

;; get rid of prompts/warnings
(setq large-file-warning-threshold nil
      ad-redefinition-action 'accept)

;; symlinks
(setq vc-follow-symlinks t
      find-file-visit-truename t)

;; fonts
(set-face-attribute 'default nil
                    :font "Ubuntu Mono"
                    :weight 'light
                    :height 150)
(set-face-attribute 'fixed-pitch nil
                    :font "Ubuntu Mono"
                    :weight 'light
                    :height 150)
(set-face-attribute 'variable-pitch nil
                    :font "Ubuntu"
                    :weight 'light
                    :height 150)
(use-package all-the-icons)

;; scrolling
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))
      mouse-wheel-progressive-speed nil
      mouse-wheel-follow-mouse 't
      scroll-step 1)

;; pywal colours
(use-package ewal)
(use-package ewal-doom-themes)
  :config
  (add-to-list 'custom-theme-load-path "~/.config/emacs")
  (load-theme 'ewal-doom-custom t)

;; line numbers
(column-number-mode)
(global-display-line-numbers-mode t)
(dolist (mode '(org-mode-hook
                term-mode-hook
                shell-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; indentation
(setq indent-tabs-mode nil
      tab-width 2)
(setq-default evil-shift-width tab-width
              indent-tabs-mode nil)

;; modeline
(use-package diminish)
(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 1
        doom-modeline-bar-width 1
        doom-modeline-buffer-file-name-style 'truncate-upto-root
        doom-modeline-buffer-encoding nil
        doom-modeline-indent-info t
        doom-modeline-env-version t
        doom-modeline-minor-modes t
        doom-modeline-buffer-state-icon nil
        inhibit-compacting-font-caches t))

;; which key
(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 0.2))

;; counsel
(use-package counsel
  :demand t
  :bind (("M-x" . counsel-M-x)
         :map minibuffer-local-map
         ("C-r" . 'counsel-minibuffer-history))
  :custom
  (counsel-linux-app-format-function #'counsel-linux-app-format-function-name-only)
  :config
  (setq ivy-initial-inputs-alist nil))

;; ivy completion
(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-next-line)
         ("<backtab>" . ivy-previous-line)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :init
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t
        ivy-wrap t
        ivy-count-format "(%d/%d) "
        enable-recursive-minibuffers t)
  (push '(completion-at-point . ivy--regex-fuzzy) ivy-re-builders-alist)
  (push '(swiper . ivy--regex-ignore-order) ivy-re-builders-alist)
  (push '(counsel-M-x . ivy--regex-ignore-order) ivy-re-builders-alist))
(use-package ivy-rich
  :init
  (ivy-rich-mode 1))
(use-package flx
  :after ivy
  :defer t
  :init
  (setq ivy-flx-limit 10000))

;; undo tree
(use-package undo-tree
  :diminish
  :init
  (global-undo-tree-mode 1))

;; evil mode
(use-package evil
  :init
  (setq evil-want-keybinding nil
        evil-want-C-u-scroll t
        evil-respect-visual-line-mode t
        evil-undo-system 'undo-tree)
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-normal-state-map (kbd "M-h") 'evil-window-left)
  (define-key evil-normal-state-map (kbd "M-j") 'evil-window-down)
  (define-key evil-normal-state-map (kbd "M-k") 'evil-window-up)
  (define-key evil-normal-state-map (kbd "M-l") 'evil-window-right)
  (define-key evil-normal-state-map (kbd "M-H") 'evil-window-move-far-left)
  (define-key evil-normal-state-map (kbd "M-J") 'evil-window-move-very-bottom)
  (define-key evil-normal-state-map (kbd "M-K") 'evil-window-move-very-top)
  (define-key evil-normal-state-map (kbd "M-L") 'evil-window-move-far-right)
  (define-key evil-normal-state-map (kbd "M-o") 'evil-window-vsplit)
  (define-key evil-normal-state-map (kbd "M-O") 'evil-window-split)
  (define-key evil-normal-state-map (kbd "M-c") 'evil-window-delete)
  (define-key evil-normal-state-map (kbd "M-C") 'kill-current-buffer)
  (define-key evil-normal-state-map (kbd "M-[") 'evil-window-decrease-width)
  (define-key evil-normal-state-map (kbd "M-]") 'evil-window-increase-width)
  (define-key evil-normal-state-map (kbd "M-{") 'evil-window-decrease-height)
  (define-key evil-normal-state-map (kbd "M-}") 'evil-window-increase-height)
  (define-key evil-normal-state-map (kbd "C-M-j") 'evil-next-buffer)
  (define-key evil-normal-state-map (kbd "C-M-k") 'evil-prev-buffer)
  (define-key evil-normal-state-map (kbd "M-w") 'counsel-switch-buffer)
  (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line))
(use-package evil-collection
  :diminish evil-collection-unimpaired-mode
  :after evil
  :config
  (evil-collection-init))

;; remember minibuffer history
(use-package savehist
  :config
  (setq history-length 100)
  (savehist-mode 1))

;; autosave
(use-package super-save
  :defer 1
  :diminish super-save-mode
  :config
  (super-save-mode +1)
  (setq super-save-auto-save-when-idle t))

;; autorevert
(setq global-auto-revert-non-file-buffers t)
(global-auto-revert-mode 1)

;; automatically clean whitespaces
(use-package ws-butler
  :diminish
  :hook ((text-mode . ws-butler-mode)
         (prog-mode . ws-butler-mode)))

;; helpful
(use-package helpful
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))

;; parentheses
(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))
(use-package paren
  :config
  (show-paren-mode 1))
(use-package smartparens
  :diminish
  :config
  (smartparens-mode 1))

;; commenting lines
(use-package evil-commentary
  :diminish
  :config
  (evil-commentary-mode))

;; RGB colours highlighting
(use-package rainbow-mode
  :diminish
  :config
  (rainbow-mode 1))

;; various key bindings
(global-set-key (kbd "C-M-u") 'universal-argument)
;; zoom
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)

;; runtine performance
(setq gc-cons-threshold (* 2 1000 1000))
