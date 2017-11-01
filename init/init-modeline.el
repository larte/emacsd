;; Telephone line
(package-initialize)
(require-package 'telephone-line)
(require 'cl)

(use-package telephone-line
  :ensure t
  :config
  (use-package telephone-line-utils)
  (use-package telephone-line-separators)
  (if window-system
      (setq telephone-line-primary-left-separator 'telephone-line-halfcos-left)
    (setq telephone-line-primary-right-separator 'telephone-line-cubed-right)
    )


  (use-package telephone-line-segments)

  (setq telephone-line-lhs
        '((accent . (telephone-line-vc-segment
                     telephone-line-process-segment))
          (nil . (telephone-line-buffer-segment))))

  (telephone-line-mode 1)
  )

(provide 'init-modeline)
