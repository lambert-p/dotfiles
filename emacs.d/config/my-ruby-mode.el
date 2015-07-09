;; my-ruby-mode.el

; activate ruby-mode
(require 'ruby-mode)
(defun my-ruby-mode-hook()
  "Hooks for ruby-mode"
  (add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode)) 
  (add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("Bowerfile" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
  (add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode)))
(add-hook 'ruby-mode-hook 'my-ruby-mode-hook)
(autoload 'ruby-mode "ruby-mode" "Major mode for editing Ruby code" t)

(provide 'my-ruby-mode)
