
;; emacs init start

;; add path
(add-to-list 'load-path
	     (expand-file-name "lisp" user-emacs-directory))


;; use init files
(require 'init-base)
(require 'init-elpa)
(require 'init-ui)

;; package
(require 'init-pkg)
(require 'init-company)
(require 'init-evil)
(require 'init-evil-leader)
