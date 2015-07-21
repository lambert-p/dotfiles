;;;; init.el for Paul Lambert < lambertington @ gmail.com >
;;;; github.com/lambertington

(require 'org)

(setq custom-org "~/.emacs.d/lambert-config.org")
(org-babel-load-file (expand-file-name custom-org))
