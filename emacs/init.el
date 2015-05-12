;; init.el for Paul Lambert < lambertington @ gmail.com >
;; github.com/lambertington

;; initialize package manger
(require 'package)
(package-initialize)
(setq package-enable-at-startup nil)

;; set up custom load path
(add-to-list 'load-path (concat user-emacs-directory "config"))

;; add package manager sources
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(unless (package-installed-p 'cider)
  (package-install 'cider))

;; activate web-mode
(require 'web-mode)
(defun my-web-mode-hook()
  "Hooks for web-mode"
  (setq web-mode-markup-indent-offset 2))
(add-hook 'web-mode-hook 'my-web-mode-hook)
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

;; activate emacs code browser
(require 'ecb)

;; include all my stuff, located in ./config
(require 'my-setup)
(require 'my-helpers)
(require 'my-evil)
(require 'my-magit)
