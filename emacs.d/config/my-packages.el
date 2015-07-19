;;;; my-packages.el
;;;; handle package initialization 

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
             clojure-mode cider-eval-sexp-fu coffee-mode eval-sexp-fu
             highlight org org-mode remember org-install
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

(provide 'my-packages)

