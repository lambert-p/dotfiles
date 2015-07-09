;;;; my-web-mode.el

;;; activate web-mode
(require 'web-mode)
(defun my-web-mode-hook()
  "Hooks for web-mode"
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
 )
(add-hook 'web-mode-hook 'my-web-mode-hook)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))

(provide 'my-web-mode)
