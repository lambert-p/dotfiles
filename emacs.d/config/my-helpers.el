;;;; my-helpers.el
;;;; includes helper functions for emacs functionality

;;; helper function for making evil-mode esc work properly
(defun my-minibuffer-keyboard-quit ()
  "Abort recursive edit.
  From github user @davvil's init.el"
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))

;;; helper function for managing package dependencies and controlling load order
(defmacro my-after (feature &rest body)
  "After FEATURE is loaded, evaluate BODY.
   Taken from `Towards a Vim-like Emacs,` who in turn took it from milkbox."
  (declare (indent defun))
  `(eval-after-load ,feature
     '(progn ,@body)))

(provide 'my-helpers)
