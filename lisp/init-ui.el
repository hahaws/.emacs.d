
;; emacs init ui config

;; remove bar
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; close start page
(setq inhibit-startup-message t)

;; show line number
(setq display-line-numbers-type 'absolute)
(global-display-line-numbers-mode t)

(provide 'init-ui)
