;; -*- lexical-binding: t -*-

(require 'dired)
(require 'dired-x)

(put 'dired-find-alternate-file 'disabled nil)

(defun ws/dired-last-line()
  (interactive)
  (end-of-buffer)
  (dired-next-line -1))

(defun ws/dired-first-line()
  (interactive)
  (beginning-of-buffer)
  (while (and (not (eobp))
	      (or (bolp)
		  (member (dired-get-filename 'no-dir t)
			  '("." ".."))))
    (dired-next-line 1)))

(with-eval-after-load 'dired
  (dired-isearch-filenames-mode t)
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
  (evil-define-key 'normal dired-mode-map "l" 'dired-find-alternate-file)
  (evil-define-key 'normal dired-mode-map "h" 'dired-up-directory)
  (evil-define-key 'normal dired-mode-map "f" 'dired-isearch-filenames-regexp)
  (evil-define-key 'normal dired-mode-map "gg" 'ws/dired-first-line)
  (evil-define-key 'normal dired-mode-map "G" 'ws/dired-last-line))

;; dired operate directory recursive
(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)

(provide 'init-dired)

