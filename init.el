
;; emacs init start

;; add path
(add-to-list 'load-path
	     (expand-file-name "lisp" user-emacs-directory))


;; use init files
(require 'init-base)
(require 'init-elpa)
(require 'init-ui)
(require 'init-org)

;; package
(require 'init-pkg)
(require 'init-company)
(require 'init-ivy)
(require 'init-evil)
(require 'init-evil-leader)

;; after require package
(require 'init-kbd)
(require 'init-dired)
