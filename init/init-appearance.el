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
             ;; face for long lines' tails
             (set-face-attribute 'whitespace-line nil
                                  :background "red1"
                                  :foreground "yellow"
                                  :weight 'bold)

             ;; ;; face for Tabs
             ;; (set-face-attribute 'whitespace-tab nil
             ;;                     :background "red1"
             ;;                     :foreground "yellow"
             ;;                     :weight 'bold)

             ;;(set-face-attribute 'default nil :height 160)
             )
(autoload 'whitespace-mode "whitespace" "" t)
(setq global-whitespace-mode t)


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
(load-theme 'tango t)

(provide 'init-appearance)
