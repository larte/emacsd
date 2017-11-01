(require-package 'hippie-exp)
(require-package 'smart-tab)

(use-package smart-tab
             :init
             (global-smart-tab-mode 1)
             )

(use-package hippie-exp
             :init

             (setq hippie-expand-try-functions-list '(
                                                      try-expand-dabbrev-visible
                                                      try-expand-dabbrev
                                                      try-expand-dabbrev-all-buffers
                                                      ))

             (define-key global-map [(tab)] 'hippie-expand)
             (define-key read-expression-map [(tab)] 'hippie-expand)
             (defun hippie-unexpand ()
               (interactive)
               (hippie-expand 0))
             (define-key read-expression-map [(shift tab)] 'hippie-unexpand)
)
(global-set-key "\C-xw"  'goto-line)

(provide 'init-tab)
