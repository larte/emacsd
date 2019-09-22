(defvar c-default-style "bsd")
(defvar c-basic-offset 4)

(defvar c++-mode-map)
(defvar c++-auto-hungry-initial-state)
(defvar c++-delete-function)
(defvar c++-tab-always-indent)
(defvar super-tab-mode)
(defvar indent-tabs-mode)
(defvar c-indent-level)
(defvar c-continued-statement-offset)
(defvar c++-empty-arglist-indent)

(defun my-c++-mode-hook ()
  (define-key c++-mode-map "\C-m" 'reindent-then-newline-and-indent)
  (define-key c++-mode-map "\C-ce" 'c-comment-edit)
  (define-key c++-mode-map "\C-t" 'c++header)
  (setq c++-auto-hungry-initial-state 'none)
  (setq c++-delete-function 'backward-delete-char)
  (setq c++-tab-always-indent t)
  (setq super-tab-mode t)
  (setq indent-tabs-mode nil)
  (setq c-indent-level 4)
  (setq c-continued-statement-offset 4)
  (setq c++-empty-arglist-indent 4)
  (c-set-style "stroustrup")
  )

(defun my-objc-mode-hook ()
  (setq indent-tabs-mode nil)
  ;; (setq super-tab-mode t)
  ;; BSD-ish indentation style
  (setq c-indent-level 4)
  )


(defvar c-mode-map)
(defvar c-auto-hungry-initial-state)
(defvar c-delete-function)
(defvar c-tab-always-indent)
(defvar super-tab-mode)
(defvar c-indent-level)
(defvar c-continued-statement-offset)
(defvar c-brace-offset)
(defvar c-argdecl-indent)
(defvar c-label-offset)

(defun my-c-mode-hook ()
  (setq tab-width 8)
  (setq indent-tabs-mode nil)
  (define-key c-mode-map "\C-m" 'reindent-then-newline-and-indent)
  (define-key c-mode-map "\C-ce" 'c-comment-edit)
  (define-key c-mode-map "\C-t" 'c-header)
  (setq c-auto-hungry-initial-state 'none)
  (setq c-delete-function 'backward-delete-char)
  (setq c-tab-always-indent t)
  (setq super-tab-mode t)
  ;; BSD-ish indentation style
  (setq c-indent-level 4)
  (setq c-continued-statement-offset 4)
  (setq c-brace-offset -4)
  (setq c-argdecl-indent 0)
  (setq c-label-offset -4)
  (c-set-style "stroustrup")
  )

;; Add all of the hooks...
(add-hook 'c++-mode-hook 'my-c++-mode-hook)
(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'objc-mode-hook 'my-objc-mode-hook)
(add-hook 'c++-mode-hook 'show-ws-highlight-tabs)
(add-hook 'c++-mode-hook 'show-ws-highlight-trailing-whitespace)
(add-hook 'c-mode-hook 'show-ws-highlight-tabs)
(add-hook 'c-mode-hook 'show-ws-highlight-trailing-whitespace)
(add-hook 'objc-mode-hook 'show-ws-highlight-tabs)
(add-hook 'objc-mode-hook 'show-ws-highlight-trailing-whitespace)



(defun objc-header ()
  (interactive)
  (insert "//  -*- objc -*-
//
// " (or (file-name-nondirectory (buffer-file-name)) "") "
//
// Created: " (current-time-string) " " (user-real-login-name) "
//
// Description:
//
"
)
  )

(defun c-header ()
  (interactive)
  (insert "/*

Created: " (current-time-string) " " (user-real-login-name) "

*/

/*
 *
 * $Id$
 * $Log$
 * $EndLog$
 */
")
  (c-mode))

(defun c++-header ()
  (interactive)
  (insert "/* -*- c++ -*-

" (or (file-name-nondirectory (buffer-file-name)) "") "

Created: " (current-time-string) " " (user-real-login-name) "

*/

")
  (c++-mode))

;; toggle between header and file:
(add-hook 'c-mode-common-hook (lambda() (local-set-key (kbd "C-c o") 'ff-find-other-file)))


;; insert header guard
(defun insert-header-guard ()
  (interactive)
  (if (string-match "\\.h\\(h\\|xx\\)?$" (buffer-name))
      (let ((header-guard
             (upcase (replace-regexp-in-string "[-.]" "_" (buffer-name)))))
        (save-excursion
          (goto-char (point-min))
          (insert "#ifndef " header-guard "_\n")
          (insert "# define " header-guard "_\n\n")
          (goto-char (point-max))
          (insert "\n#endif /* !" header-guard "_ */")))
    (message "Invalid C/C++ header file.")))

(provide 'init-cmodes)
