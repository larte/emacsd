(defun require-package (package)
  "Install given PACKAGE."
  (unless (package-installed-p package)
    (unless (assoc package package-archive-contents)
      (package-refresh-contents))
    (package-install package)))


(defun elc-name (name)
  (replace-regexp-in-string "\\.el$" ".elc" name)
  )

(defun compile-if-newer (name)
  "Try to compile given .el file if changes were made."
  (if (file-exists-p (elc-name name))
      (if (file-newer-than-file-p name (elc-name name))
          (byte-compile-file name)
        )
    (byte-compile-file name)
    )
  )

(defun compile-and-load (name)
  "Try to compile given .el file if changes were made. load file."
  (compile-if-newer (elc-name name))
  (load (elc-name name))
  )
(setq custom-file "~/.emacs.d/custom.el")

(dolist (file (directory-files (concat user-emacs-directory "init") t "\\.el$")) (compile-if-newer file))




(provide 'boot)
