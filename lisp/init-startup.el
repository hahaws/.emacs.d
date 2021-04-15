
;; judge plateform
(defconst *is-mac* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gnu/linux))
(defconst *is-windows* (or (eq system-type 'ms-dos) (eq system-type 'windows-nt)))

(setq gc-cons-threshold most-positive-fixnum)

;; use y-or-n instead of yes-or-no
(use-package emacs
  :config
  (defalias 'yes-or-no-p 'y-or-n-p))

;; set default directory
(setq default-directory "~/")

;; set graphic config to single file
(setq custom-file
      (expand-file-name "custom.el" user-emacs-directory))

;; change font in windows
(use-package emacs
  :if (display-graphic-p)
  :config
  (if *is-windows*
      (add-to-list 'after-make-frame-functions
		   (lambda (new-frame)
		     (select-frame new-frame)
		     ;; English Font
		     (set-face-attribute 'default nil :font "Source Code Pro 12")
		     ;; Chinese Font
		     (dolist (charset '(kana han symbol cjk-misc bopomofo))
		       (set-fontset-font (frame-parameter nil 'font)
					 charset (font-spec :family "Noto Sans CJK SC" :size 16)))))))

;; set encoding
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)

(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))

;; autoload file which changed outside
(global-auto-revert-mode 1)
;; close autosave file
(setq auto-save-default nil)
;; close bell
(setq ring-bell-function 'ignore)

;; use only one buffers for dierd mode
(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))


(provide 'init-startup)




