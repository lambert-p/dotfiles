;; my-setup.el
;; set up some global defaults for emacs behaviors and aesthetics

;; hide the menu bar and tool bar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; color scheme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'zenburn t)

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

;; better word wrapping
(visual-line-mode 1)

;; enforce trailing newlines
(setq require-final-newline t)

(provide 'my-setup)

