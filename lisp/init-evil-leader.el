
;;
(use-package evil-leader
  :ensure t
  :config
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key "w" 'save-buffer)
  (evil-leader/set-key "q" 'kill-buffer)
  (evil-leader/set-key "bm" 'buffer-menu-other-window)
  (evil-leader/set-key "bb" 'next-buffer)
  (evil-leader/set-key "bp" 'previous-buffer)
  (evil-leader/set-key "r" 'dired)
  (evil-leader/set-key "a" 'evil-beginning-of-visual-line)
  (evil-leader/set-key "e" 'evil-end-of-visual-line))

(global-evil-leader-mode)

(provide 'init-evil-leader)
