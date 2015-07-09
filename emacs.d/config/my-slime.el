;;;; my-slime.el
;;;; sets up behavior for SLIME, superior lisp interaction mode for emacs

;;; use superior Lisp interaction mode
(progn
  (require 'elisp-slime-nav)
  (defun my-lisp-hook ()
    (elisp-slime-nav-mode)
    (turn-on-eldoc-mode))
  (add-hook 'emacs-lisp-mode-hook 'my-lisp-hook))


;; hook up SLIME to SBCL
(setq inferior-lisp-program "/usr/local/bin/sbcl")

(provide 'my-slime)
