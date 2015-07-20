;;;; my-org-mode.el
;;;; includes helpful defaults for org-mode functionality

(require 'org)

(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)

;; record when switching from a TODO state to a DONE state
(setq org-log-done 'time)
(setq org-log-done 'note)

(setq org-agenda-files (list "~/org/work.org"
                             "~/org/home.org"
                             "~/org/todo.org"))
(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d)")
        (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
        (sequence "|" "CANCELED(c)")))

;; warn me two weeks in advance about looming deadlines
(setq org-deadline-warning-days 14)

(provide 'my-org-mode)
