; My Emacs configuration
(package-initialize)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))

;; Non needed GUI
(if (fboundp 'menu-bar-mode)
    (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode -1))

;; Load custom lisp files
(add-to-list 'load-path (expand-file-name "lisp/use-package" user-emacs-directory))
(load "use-package")

;; Use packages
(use-package monokai-theme
  :ensure t)
(use-package magit
  :bind ("C-x g" . magit-status)
  :ensure t)
(use-package editorconfig
  :ensure t
  :config (editorconfig-mode 1))
(use-package markdown-mode
  :ensure t)
(use-package elpy
  :ensure t)
(use-package yaml-mode
  :ensure t)
(use-package intero
  :ensure t)
(use-package shakespeare-mode
  :ensure t)
(use-package puppet-mode
  :ensure t)
(use-package jinja2-mode
  :ensure t)

(ido-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "44c566df0e1dfddc60621711155b1be4665dd3520b290cb354f8270ca57f8788" "b747fb36e99bc7f497248eafd6e32b45613ee086da74d1d92a8da59d37b9a829" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" default)))
 '(electric-indent-mode nil)
 '(package-selected-packages
   (quote
    (avy solarized-theme github-modern-theme puppet-mode silkworm-theme shakespeare-mode sharespeare-mode yaml-mode material-theme markdown-mode markdown magit monokai-theme)))
 '(safe-local-variable-values
   (quote
    ((haskell-process-use-ghci . t)
     (haskell-indent-spaces . 4)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(if (file-exists-p "~/.emacs.d/opam-user-setup.el")
    (require 'opam-user-setup "~/.emacs.d/opam-user-setup.el"))
;; ## end of OPAM user-setup addition for emacs / base ## keep this line
