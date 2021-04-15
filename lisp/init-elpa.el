
;; set elpa mirror

(setq package-archives '(
			 ("melpa"  .  "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("gnu"    .  "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("org"    .  "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))


;; close check signature
(setq package-check-signature nil)

;; init package manager
(require 'package)
(unless (bound-and-true-p package--initialized)
  (package-initialize))
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'used-package)
  (package-refresh-contents)
  (package-install 'use-package))

(provide 'init-elpa)

	      
