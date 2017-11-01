(require-package 'ruby-mode)
(require-package 'ruby-refactor)
(require-package 'rubocop)
(require-package 'exec-path-from-shell)

(use-package ruby-mode
  :init
  (defvar ruby-basic-offset 4)
  (add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)
  (add-hook 'ruby-mode-hook 'whitespace-mode))
(use-package rubocop-mode
  :init
  (exec-path-from-shell-initialize)
  (setq rubocop-check-command "~/.rvm/gems/ruby-2.3.1/bin/rubocop")
  (defun rubocop-ensure-installed () )
  (add-hook 'ruby-mode-hook #'rubocop-mode)
  )



(provide 'init-ruby)
