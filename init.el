
;;

(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

(require 'init-elpa)
(require 'init-pkg)
(require 'init-startup)
(require 'init-ui)
(require 'init-evil)
(require 'init-org)
