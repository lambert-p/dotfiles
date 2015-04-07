;; my-evil.el

;; make C-u scroll, as in vim
(setq evil-want-C-u-scroll t)

;; incremental search
(setq evil-search-module 'isearch)

;; switch from emacs' default undo
(setq evil-want-fine-undo t)

;; enable evil!
(evil-mode 1)

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

(provide 'my-evil)
