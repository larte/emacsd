(require-package 'go-mode)

(add-hook 'before-save-hook #'gofmt-before-save)
(add-to-list 'exec-path (expand-file-name "~/go/bin/godef") )

(let ((govet (flycheck-checker-get 'go-vet 'command)))
  (when (equal (cadr govet) "tool")
    (setf (cdr govet) (cddr govet))))

(provide 'init-go)
