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
    init-custom-k8s
    init-dependencies
    init-appearance
    init-modeline
    ;; mode specific settings
    init-go
    init-ruby
    init-k8s
    ;; apply automodes
    init-tab
    init-automodes
    init-behaviour
    init-fun
    init-neotree
    )
  "Set of modules enabled in dotemacs."
  :group 'dotemacs)

(dolist (module dotemacs-modules)
  (require module))
(put 'upcase-region 'disabled nil)
