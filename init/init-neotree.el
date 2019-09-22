(require-package 'neotree)
(use-package neotree
  :init
  (define-key global-map [f8] 'neotree-toggle)
  )

(provide 'init-neotree)
