; (setq user-full-name ""
;       user-mail-address "")

(setq doom-font (font-spec :family "Ubuntu Mono" :weight 'regular :size 22)
      doom-variable-pitch-font (font-spec :family "Ubuntu" :weight 'regular :size 22)
      doom-big-font (font-spec :family "Ubuntu" :weight 'regular :size 44))

(setq doom-theme 'ewal-doom-one)

(setq display-line-numbers-type 'relative)

(setq org-directory "~/Documents")

(use-package! ewal)

;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
