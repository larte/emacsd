(require-package 'ruby-mode)
(require-package 'ruby-refactor)
(require-package 'rubocop)
(require-package 'exec-path-from-shell)
(require-package 'rvm)
(use-package rvm
  :init
  (rvm-use-default))

(use-package ruby-mode
  :init
  (defvar ruby-basic-offset 4)
  (add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)
  (setq ruby-insert-encoding-magic-comment nil)
  (add-hook 'ruby-mode-hook 'whitespace-mode))
(use-package rubocop-mode
  :init
  (exec-path-from-shell-initialize)
  (setq rubocop-check-command "~/.rvm/gems/ruby-2.4.2@global/bin/rubocop --format=emacs")
  (defun rubocop-ensure-installed () )
  (add-hook 'ruby-mode-hook #'rubocop-mode)
  )



(provide 'init-ruby)
