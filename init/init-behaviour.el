(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.cache/emacs/"))
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(setq indicate-empty-lines t)

(global-auto-revert-mode)

(provide 'init-behaviour)
