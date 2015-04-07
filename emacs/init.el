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
                         ("gnu" . "htp://elpa.gnu.org/packages/")))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; rebind <RET> to newline-and-indent (default C-j)
; (add-hook 'c-mode-hook
; 	  '(lambda ()
; 	     (define-key c-mode-map "\C-m" 'newline-and-indent)))


;; activate emacs code browser
(require 'ecb)

;; include all my stuff, located in ./config
(require 'my-setup)
(require 'my-helpers)
(require 'my-evil)
(require 'my-magit)
