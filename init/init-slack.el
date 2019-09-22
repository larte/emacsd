(require-package 'slack)
(require-package 'emojify)
(use-package slack
  :commands (slack-start)
  :init
  (setq slack-buffer-emojify t)
  (setq slack-prefer-current-team t)
  :config
  (slack-register-team
   :name "foodies"
   :default t
   :client-id (getenv "FOODIE_SLACK_CLIENT_ID")
   :client-secret ""
   :token (getenv "FOODIE_SLACK_TOKEN")
   :full-and-display-names t))

(provide 'init-slack)
