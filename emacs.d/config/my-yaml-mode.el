;;;; my-yaml-mode.el
;;;; sets up behavior for yaml-mode

;; makes return key automatically indent cursor on new line
(add-hook 'yaml-mode-hook
  (lambda()
    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))


(provide 'my-yaml-mode)
