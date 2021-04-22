
;; emacs init elpa config

(require 'package)
(require 'cl-lib)

(setq package-archives '(
			 ("melpa"  .  "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
			 ("gnu"    .  "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
			 ("org"    .  "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))


;; close check signature
(setq package-check-signature nil)

;; init package manager
(require 'package)

(unless package-archive-contents
  (package-refresh-contents))

;; Fire up package.el
(setq package-enable-at-startup nil)

(package-initialize)

;; Bootstrapping use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-always-ensure t)
(setq use-package-always-defer t)
(setq use-package-always-demand nil)
(setq use-package-expand-minimally t)
(setq use-package-verbose t)

(provide 'init-elpa)

