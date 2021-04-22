
;;
(use-package evil-leader
  :ensure t
  :config
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key "w" 'save-buffer)
  (evil-leader/set-key "q" 'kill-buffer)
  (evil-leader/set-key "bm" 'buffer-menu-other-window)
  (evil-leader/set-key "bb" 'next-buffer)
  (evil-leader/set-key "bm" 'previous-buffer))

(global-evil-leader-mode)

(provide 'init-evil-leader)
