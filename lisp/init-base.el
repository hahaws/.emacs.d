
;; emacs init base config

;; close spell check support
(defconst *spell-check-support-enabled* nil)

;; adjust garbage collection thresholds during startup and thereafter
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
	    (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))



;; set default directory
(setq default-directory "~/")

;; set graphic config to single file
(setq custom-file
      (expand-file-name "graphic-config.el" user-emacs-directory))

;; set encoding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

;; autoload file which changed outside
(global-auto-revert-mode 1)

;; close autosave file
(setq auto-save-default nil)

;; close bell
(setq ring-bell-function 'ignore)

(provide 'init-base)
