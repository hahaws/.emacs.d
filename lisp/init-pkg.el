
;;
;;

(eval-when-compile
  (require 'use-package))

(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-always-demand nil)
  (setq use-package-expand-minimally t)
  (setq use-package-verbose t))

(use-package restart-emacs)

(use-package ivy
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
        ivy-initial-inputs-alist nil
        ivy-count-format "%d/%d "
        enable-recursive-minibuffers t
        ivy-re-builders-alist '((t . ivy--regex-ignore-order)))
  (ivy-posframe-mode 1))

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
         ("C-r" . swiper-isearch-backward))
  :config (setq swiper-action-recenter t
                swiper-include-line-number-in-search t))

(use-package ivy-posframe
  :init
  (setq ivy-posframe-display-functions-alist
    '((swiper . ivy-posframe-display-at-frame-center)
      (complete-symbol . ivy-posframe-display-at-point)
      (counsel-M-x . ivy-posframe-display-at-frame-center)
      (counsel-find-file . ivy-posframe-display-at-frame-center)
      (ivy-switch-buffer . ivy-posframe-display-at-frame-center)
      (t . ivy-posframe-display-at-frame-center))))

(use-package which-key
  :defer nil
  :config (which-key-mode))

(use-package company
  :config
  (setq company-dabbrev-code-everywhere t
	company-dabbrev-code-modes t
	company-dabbrev-code-other-buffers 'all
	company-dabbrev-downcase nil
	company-dabbrev-ignore-case t
	company-dabbrev-other-buffers 'all
	company-require-match nil
	company-minimum-prefix-length 2
	company-show-numbers t
	company-tooltip-limit 20
	company-idle-delay 0
	company-echo-delay 0
	company-tooltip-offset-display 'scrollbar
	company-begin-commands '(self-insert-command))
  (push '(company-semantic :with company-yasnippet) company-backends)
  :hook ((after-init . global-company-mode)))

(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll t))

(use-package evil-leader
  :ensure t
  :config
  (evil-leader/set-leader "<SPC>")
  (evil-leader/set-key "w" 'save-buffer)
  (evil-leader/set-key "bm" 'buffer-menu-other-window)
  (evil-leader/set-key "bb" 'next-buffer)
  (evil-leader/set-key "bp" 'previous-buffer)
  (evil-leader/set-key "q" 'kill-buffer)
  (evil-leader/set-key "r" 'ranger))


(use-package ranger
  :ensure t
  :commands (ranger)
  :config
  (setq ranger-cleanup-eagerly t)
  (setq ranger-show-hidden t)
  (setq ranger-max-preview-size 50)
  (setq ranger-show-literal nil))

(require 'evil-leader)
(global-evil-leader-mode)

(require 'evil)
(evil-mode 1)

(provide 'init-pkg)


