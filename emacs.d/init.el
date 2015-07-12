;;;; init.el for Paul Lambert < lambertington @ gmail.com >
;;;; github.com/lambertington

(require 'cl)

;;; initialize package manger
(require 'package)
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
(setq package-enable-at-startup nil)

;;; list taken from `C-h v package-activated-list`
(defvar my-packages
  '(bind-key cider-decompile javap-mode cider queue pkg-info epl dash
             clojure-mode cider-eval-sexp-fu eval-sexp-fu highlight
             cider-profile cider-spy diminish elisp-slime-nav
             evil goto-chg undo-tree ghc haskell-mode
             haskell-emacs magit magit-popup git-commit with-editor
             markdown-mode paredit python-mode slime typescript-mode
             web-mode yaml-mode)
  "A list of packages to ensure are installed at launch.")

(when (not package-archive-contents)
  (package-refresh-contents))

(dolist (package my-packages)
  (when (and (not (package-installed-p package))
             (assoc package package-archive-contents))
    (package-install package)))

;;; set up custom load path
(add-to-list 'load-path (concat user-emacs-directory "config"))

;;; include all my stuff, located in ./config
(require 'my-setup)

(require 'my-evil)
(require 'my-helpers)
(require 'my-javascript-mode)
; (require 'my-magit)
(require 'my-ruby-mode)
(require 'my-slime)
(require 'my-web-mode)
(require 'my-yaml-mode)
