(require-package 'kubernetes)
(use-package kubernetes
  :ensure t
  :commands (kubernetes-overview))
(provide 'init-k8s)
