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

;; hide the menu bar and tool bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; color scheme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'zenburn t)

;; rebind <RET> to newline-and-indent (default C-j)
(add-hook 'c-mode-hook
	  '(lambda ()
	     (define-key c-mode-map "\C-m" 'newline-and-indent)))

;; use superior Lisp interaction mode
(progn
  (require 'elisp-slime-nav)
  (defun my-lisp-hook ()
    (elisp-slime-nav-mode)
    (turn-on-eldoc-mode))
  (add-hook 'emacs-lisp-mode-hook 'my-lisp-hook))

;; hide the startup messages
(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; evil mode configuration ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; make C-u scroll up
(setq evil-want-C-u-scroll t)

;; enable evil-mode
(require 'evil)
(evil-mode 1)

;; esc ALWAYS quits
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

;; map M-x describe-function to 'k'
(evil-define-key 'normal emacs-lisp-mode-map (kbd "K")
  'elisp-slime-nav-describe-elisp-thing-at-point)

