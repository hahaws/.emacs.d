
;;
(use-package evil
  :ensure t
  :defer nil
  :init
  (setq evil-want-C-d-scroll t)
  (setq evil-want-C-u-scroll t)
  (evil-mode 1))

;;; C-c as general purpose escape key sequence.
(defun my-esc (prompt)
  (cond ((or (evil-insert-state-p) (evil-normal-state-p) (evil-replace-state-p) (evil-visual-state-p)) [escape]) (t (kbd "C-g"))))
(define-key key-translation-map (kbd "C-c") 'my-esc)
(define-key evil-operator-state-map (kbd "C-c") 'keyboard-quit)
(set-quit-char "C-c")

(provide 'init-evil)
