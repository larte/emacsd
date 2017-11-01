;;; -*- lisp -*-
;;; Emacs boot

(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'load-path "~/.emacs.d/init")

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "http://orgmode.org/elpa/")
        ("melpa" . "https://melpa.milkbox.net/packages/"))
      )
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))


;; compile all files under config
(load (concat user-emacs-directory "init/boot"))

(defgroup dotemacs nil
  "Custom configuration for dotemacs."
  :group 'local)

(defcustom dotemacs-modules
  '(
    init-common
    init-dependencies
    init-appearance
    init-modeline
    ;; mode specific settings
    init-go
    init-ruby
    ;; apply automodes
    init-tab
    init-automodes
    init-behaviour
    )
  "Set of modules enabled in dotemacs."
  :group 'dotemacs)

(dolist (module dotemacs-modules)
  (require module))
