(require-package 'ruby-mode)
(require-package 'ruby-refactor)
(require-package 'rubocop)
(require-package 'exec-path-from-shell)
(require-package 'rvm)

(use-package rvm
  :init
  (rvm-use-default))
  (setq flycheck-ruby-rubocop-executable "~/bin/rubocop-shim")
(use-package ruby-mode
  :init
  (defvar ruby-basic-offset 4)
  (add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)
  (add-hook 'ruby-mode-hook (lambda () (hs-minor-mode)))
  (setq ruby-insert-encoding-magic-comment nil)
  (add-hook 'ruby-mode-hook 'whitespace-mode)
  (eval-after-load "hideshow"
    '(add-to-list 'hs-special-modes-alist
                  `(ruby-mode
                    ,(rx (or "def" "class" "module" "do" "{" "[")) ; Block start
                    ,(rx (or "}" "]" "end"))                       ; Block end
                    ,(rx (or "#" "=begin"))                        ; comment start
                    ruby-forward-sexp nil)))
  )

;; (global-set-key (kbd "C-c h") 'hs-hide-block)
;; (global-set-key (kbd "C-c s") 'hs-show-block)
(global-set-key (kbd "C-h") 'hs-toggle-hiding)
;; (use-package rubocop-mode
;;   :init
;;   (exec-path-from-shell-initialize)
;;   (setq rubocop-check-command "~/bin/rubocop-shim.rvm/gems/ruby-2.4.2@global/bin/rubocop --format=emacs")
;;   (defun rubocop-ensure-installed () )
;;   (add-hook 'ruby-mode-hook #'rubocop-mode)
;;   )


(provide 'init-ruby)
