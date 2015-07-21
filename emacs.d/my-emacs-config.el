
(require 'cl)

(setq user-full-name "Paul M Lambert"
      user-mail-address "lambertington@gmail.com")

(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(unless (assoc-default "melpa" package-archives)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (package-refresh-contents))
(package-initialize)
(setq package-enable-at-startup nil)

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(setq use-package-verbose t)

(require 'use-package)

(use-package auto-compile
  :ensure t
  :config (auto-compile-on-load-mode))
(setq load-prefer-newer t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'zenburn t)

(fset 'yes-or-no-p 'y-or-n-p)

(setq-default indent-tabs-mode nil)

(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

(line-number-mode t)
(column-number-mode t)
(global-linum-mode t)

;; use English as our base language
(setq current-language-environment "English")

;; better word wrapping
(visual-line-mode 1)

;; enforce trailing newlines
(setq require-final-newline t)

(defun my-minibuffer-keyboard-quit ()
  "Abort recursive edit.
  From github user @davvil's init.el"
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))

(use-package cider
  :ensure t)

(use-package coffee-mode
  :ensure t
  :mode "\\.coffee\\'"
  :config
  (custom-set-variables '(coffee-tab-width 2)))

(use-package ghc
  :ensure t
  :commands ghc)

(use-package js2-mode
  :ensure t
  :mode "\\.js\\'"
  :config
  (setq
   js2-basic-offset 2
   js2-bounce-indent-p nil))

(use-package elisp-slime-nav
  :ensure t
  :commands lisp-mode
  :config
  (dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook))
    (add-hook hook 'elisp-slime-nav-mode))

  ;; hook up SLIME to SBCL
  (setq inferior-lisp-program "/usr/local/bin/sbcl")
  :bind ("C-h K" . find-function-on-key))

(use-package python-mode
  :ensure t
  :commands python-mode)

(use-package ruby-mode
  :ensure t
  :commands ruby-mode
  :mode (("Gemfile\\'" . ruby-mode)
         ("Kirkfile\\'" . ruby-mode)
         ("Rakefile\\'" . ruby-mode)
         ("Vagrantfile\\'" . ruby-mode)
         ("\\.builder\\'" . ruby-mode)
         ("\\.gemspec\\'" . ruby-mode)
         ("\\.irbrc\\'" . ruby-mode)
         ("\\.pryrc\\'" . ruby-mode)
         ("\\.rake\\'" . ruby-mode)
         ("\\.rjs\\'" . ruby-mode)
         ("\\.ru\\'" . ruby-mode)
         ("\\.rxml\\'" . ruby-mode))
  :init (setq ruby-use-encoding-map nil))

(use-package web-mode
  :ensure t
  :mode "\\.(html?|css|scss|erb|php|[agj]sp|as[cp]x)\\'"
  :config
  (setq
   web-mode-markup-indent-offet 2
   web-mode-css-indent-offset 2))

(use-package yaml-mode
  :commands yaml-mode)

(use-package evil
  :ensure t
  :init
  (progn
    (setq
     ;; incremental search
     evil-search-module 'isearch

     ;; switch from emacs' default undo
     evil-want-fine-undo t))
  :config
  (progn
    ;; Map C-d C-u
    (define-key evil-normal-state-map (kbd "C-u") 'evil-scroll-up)
    (define-key evil-normal-state-map (kbd "C-d") 'evil-scroll-down)
    (define-key evil-motion-state-map (kbd "C-u") 'evil-scroll-up)
    (define-key evil-motion-state-map (kbd "C-d") 'evil-scroll-down)

    ;; esc ALWAYS quits
    (define-key evil-normal-state-map [escape] 'keyboard-quit)
    (define-key evil-visual-state-map [escape] 'keyboard-quit)
    (define-key minibuffer-local-map [escape] 'my-minibuffer-keyboard-quit)
    (define-key minibuffer-local-ns-map [escape] 'my-minibuffer-keyboard-quit)
    (define-key minibuffer-local-completion-map [escape] 'my-minibuffer-keyboard-quit)
    (define-key minibuffer-local-must-match-map [escape] 'my-minibuffer-keyboard-quit)
    (define-key minibuffer-local-isearch-map [escape] 'my-minibuffer-keyboard-quit)

    ;; map M-x describe-function to 'k'
    (evil-define-key 'normal emacs-lisp-mode-map (kbd "K")
      'elisp-slime-nav-describe-elisp-thing-at-point)

    ;; boot evil by default
    (evil-mode 1)))

(use-package magit
  :ensure t
  :config
  (setq magit-last-seen-setup-instructions "1.4.0")
  (global-set-key (kbd "C-x g") 'magit-status))

(use-package org
  :ensure t
  :config
  (define-key global-map "\C-cl" 'org-store-link)
  (define-key global-map "\C-ca" 'org-agenda)

  ;; record when switching from a TODO state to a DONE state
  (setq
   org-log-done 'time
   org-log-done 'note

   org-agenda-files (list "~/org/work.org"
                          "~/org/home.org"
                          "~/org/todo.org")
   org-todo-keywords
   '((sequence "TODO(t)" "|" "DONE(d)")
     (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
     (sequence "|" "CANCELED(c)"))

   ;; warn me two weeks in advance about looming deadlines
   org-deadline-warning-days 14))
