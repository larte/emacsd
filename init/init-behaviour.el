(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.cache/emacs/"))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(setq indicate-empty-lines t)

(global-auto-revert-mode)

(require-package 'annoying-arrows-mode)
(require 'annoying-arrows-mode)
(global-annoying-arrows-mode)
;; (global-unset-key [left])
;; (global-unset-key [right])
;; (global-unset-key [up])
;; (global-unset-key [down])


(add-hook 'after-init-hook #'global-flycheck-mode)
(provide 'init-behaviour)
