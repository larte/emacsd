;;; -*- lisp -*-
;;;
;;; init-appearance.el
;;;
;;; Created: Tue Oct 31 16:22:54 2017 larte
;;;
(require-package 'whitespace)

(use-package whitespace
  :init
  (defvar whitespace-line-column)
  (defvar whitespace-style)
             (setq whitespace-line-column 80
                   whitespace-style '(face tabs trailing lines-tail))
             ;; (set-face-attribute 'whitespace-line nil
             ;;                      :background "red1"
             ;;                      :foreground "yellow"
             ;;                      :weight 'bold)
             ;; )
(autoload 'whitespace-mode "whitespace" "" t)
(setq global-whitespace-mode t)
)

;; show parentheses
(use-package paren
  :config
  (show-paren-mode 1)
  (setq show-paren-style 'parenthesis)
  (setq show-paren-delay 0)
  )



;; hide menus and bars
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

;; Theme
;; (load-theme 'tango t)
;;   (defvar github-override-colors-alist
;;         '(("github-comment"  . "#ffffff")))
;; (load-theme 'github-modern t)
;; (use-package github-modern-theme
;;   :config
;;   (load-theme 'github-modern t)
;;   )

(require-package 'tango-plus-theme)
(use-package tango-plus-theme
  :config
  (load-theme 'tango-plus t))

;; (use-package eterm-256color
;;   :ensure t)

(provide 'init-appearance)
