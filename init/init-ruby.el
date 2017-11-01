(require-package 'ruby-mode)
(require-package 'ruby-refactor)

(use-package ruby-mode
             :init
             (defvar ruby-basic-offset 4)
             (add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)
             (add-hook 'ruby-mode-hook 'whitespace-mode))


(provide 'init-ruby)
