;; -*- lexical-binding: t -*-

(require 'dired-x)

(evil-set-initial-state 'dired-mode 'emacs)

;; dired operate directory recursive
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)

(define-key dired-mode-map (kbd "h") 'dired-up-directory)
(define-key dired-mode-map (kbd "j") 'dired-next-line)
(define-key dired-mode-map (kbd "k") 'dired-previous-line)
(define-key dired-mode-map (kbd "l") 'dired-find-file)

(provide 'init-dired)

