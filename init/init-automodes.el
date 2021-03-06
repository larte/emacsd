
(setq auto-mode-alist
      (append '(("\\.C$"         . c++-mode)
                ("\\.cc$"        . c++-mode)
                ("\\.cpp$"       . c++-mode)
                ("\\.cxx$"       . c++-mode)
                ("\\.hxx$"       . c++-mode)
                ("\\.hpp$"       . c++-mode)
                ("\\.h$"         . c++-mode)
                ("\\.hh$"        . c++-mode)
                ("\\.idl$"       . c++-mode)
                ("\\.ipp$"       . c++-mode)
                ("\\.pp$"       . puppet-mode)
                ("\\.erl$"       . erlang-mode)
                ("\\.ex[s]?$"       . elixir-mode)
                ("\\.elixir$"       . elixir-mode)
                ("\\.c$"         . c-mode)
                ("\\.pl$"        . perl-mode)
                ("\\.pm$"        . perl-mode)
                ("\\.java$"      . java-mode)
                ("\\.js$"        . js-mode)
                ("\\.dot$"        . dot-mode)
                ("\\.inc$"       . php-mode)
                ("\\.php$"       . php-mode)
                ("\\.hs$"       . haskell-mode)
                ("\\.hi$"       . haskell-mode)
                ("\\.go$"       . go-mode)
                ("\\.groovy$"       . groovy-mode)
                ("\\.lhs$"       . haskell-mode)
                ("\\.ml[ily]?$" . tuareg-mode)
                ("\\.tf" . terraform-mode)
                ("\\.topml$" . tuareg-mode)
                ("\\.txt$"       . text-mode)
                ("\\.http$"       . restclient-mode)
                ("\\.rb$"        . ruby-mode)
                ("\\.rbw$"       . ruby-mode)
                ("\\.yaml$"        . yaml-mode)
                ("\\.yml$"       . yaml-mode)
                ("\\.sql$"       . sql-mode)
                ("\\.rake$"       . ruby-mode)
                ("\\Rakefile$"    . ruby-mode)
                ("\\spec.rb$"    . rspec-mode)
                ("\\.feature$"   . cucumber-mode)
                ("\\.el$"   . lisp-mode)
                ("\\.html$" . web-mode)
                ("\\.*nginx.*\.conf$" . nginx-mode)
                ("\\.conf$" . conf-mode)
                ("\\.rhtml$"      . web-mode)
                ("\\.erb$"      . web-mode)
                ("\\.css$"       . css-mode)
                ("\\.occ$"       . occam-mode)
                ("\\.scsh$"      . scheme-mode)
                ("\\.m$"         . objc-mode)
                ("\\TODO$"         . org-mode)
                ("\\.org$"         . org-mode)
                ("\\.mm$"         . objc-mode)
                ("\\.md$"         . markdown-mode)
                ("\\.MD$"         . markdown-mode)
                ("\\.feature$"    . feature-mode)
                ("\\.markdown$"         . markdown-mode))
              auto-mode-alist))

(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)

(provide 'init-automodes)
