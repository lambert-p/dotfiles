;; my-setup.el
;; set up some global defaults for emacs behaviors and aesthetics

; hide the menu bar and tool bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq current-language-environment "English")

(line-number-mode t)
(column-number-mode t)
(global-linum-mode t)

(setq-default indent-tabs-mode nil)

; change yes-or-no to y-or-n
(fset 'yes-or-no-p 'y-or-n-p)

; color scheme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'zenburn t)

; hide the startup messages
(setq inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)

; set up default size
; (add-to-list 'default-frame-alist '(height . 50))
; (add-to-list 'default-frame-alist '(width . 50))

; better word wrapping
(visual-line-mode 1)

; enforce trailing newlines
(setq require-final-newline t)

(provide 'my-setup)

