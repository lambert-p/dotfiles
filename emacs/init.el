;; init.el for Paul Lambert < lambertington @ gmail.com >
;; github.com/lambertington

(require 'cl)

;; initialize package manger
(require 'package)
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)
(setq package-enable-at-startup nil)

;; list taken from `C-h v package-activated-list`
(defvar my-packages
  '(typescript-mode typescript-mode bind-key cider-decompile javap-mode
                    cider queue pkg-info epl dash clojure-mode cider-eval-sexp-fu
                    eval-sexp-fu highlight highlight cider-profile cider queue
                    pkg-info epl dash clojure-mode cider-spy dash cider queue pkg-info
                    epl dash clojure-mode clojure-mode dash diminish ecb elisp-slime-nav
                    eval-sexp-fu highlight evil goto-chg undo-tree ghc
                    goto-chg haskell-emacs haskell-mode highlight javap-mode
                    linum-relative magit git-rebase-mode git-commit-mode markdown-mode
                    paredit pkg-info epl python-mode queue slime undo-tree web-mode)
  "A list of packages to ensure are installed at launch.")

(defun my-packages-installed-p ()
  (loop for p in my-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (my-packages-installed-p)
  ;; check for new packages
  (package-refresh-contents)
  ;; install missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

;; set up custom load path
(add-to-list 'load-path (concat user-emacs-directory "config"))

;; include all my stuff, located in ./config
(require 'my-setup)
(require 'my-slime)
(require 'my-helpers)
(require 'my-evil)
(require 'my-web-mode)
(require 'my-javascript-mode)
;; (require 'my-magit)
