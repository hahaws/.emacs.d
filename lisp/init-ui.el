
;; remove bar-mode
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash-screen
(setq inhibit-startup-message t)

;; show line number
(use-package emacs
  :config
  (setq display-line-numbers-type 'absolute)
  (global-display-line-numbers-mode t))


;; set theme
;; (use-package gruvbox-theme
;;   :init (load-theme 'gruvbox-dark-soft t))
;; 
;; (use-package smart-mode-line
;;   :init
;;   (setq sml/no-confirm-load-theme t)
;;   (setq sml/theme 'respectful)
;;   (sml/setup))

(provide 'init-ui)
