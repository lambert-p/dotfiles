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

;; add package manager sources
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("gnu" . "htp://elpa.gnu.org/packages/")))

;; initialize package manger
(require 'package)
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;
;; KEEP AT BOTTOM
;;;;;;;;;;;;;;;;;;;;;;;;

;; enable evil-mode

;; make C-u scroll up
(setq evil-want-C-u-scroll t)

(require 'evil)
(evil-mode 1)
