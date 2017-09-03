;; My Emacs configuration
(package-initialize)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))

;; Non needed GUI
(menu-bar-mode -1)
(tool-bar-mode -1)
(load-theme 'monokai)

;; Load custom lisp files
(add-to-list 'load-path (expand-file-name "lisp/use-package" user-emacs-directory))
(load "use-package")

;; Use packages
(use-package monokai-theme
  :ensure t)
(use-package magit
  :bind ("C-x g" . magit-status)
  :ensure t)

(ido-mode t)
