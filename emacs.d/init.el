;;;; init.el for Paul Lambert < lambertington @ gmail.com >
;;;; github.com/lambertington

;; set up custom load path
(add-to-list 'load-path (concat user-emacs-directory "config"))

;; set up packages
(require 'my-packages)

;; set up some reasonable defaults
(require 'my-setup)

;; include all my stuff, located in ./config
(require 'my-coffee-mode)
(require 'my-evil)
(require 'my-helpers)
(require 'my-javascript-mode)
; (require 'my-magit)
(require 'my-org-mode)
(require 'my-ruby-mode)
(require 'my-slime)
(require 'my-web-mode)
(require 'my-yaml-mode)
