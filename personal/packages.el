;;; packages.el --- Packages configuration

;;; Code:
(add-to-list 'load-path "~/.emacs.d/")
(require 'package)

(package-initialize)                                        
(setq package-archives
  '(("melpa" . "https://melpa.org/packages/")
    ("org" . "https://orgmode.org/elpa/")
    ("elpa" . "https://elpa.gnu.org/packages/")))

(package-refresh-contents)

(setq my-packages
      '(twilight-bright-theme
	zenburn-theme
	spacemacs-theme
	magit
	projectile
	helm))

(unless package-archive-contents                            
  (package-refresh-contents))                               

(dolist (pkg my-packages)                                   
  (unless (package-installed-p pkg)                         
    (package-install pkg)))

;;; Helm
(require 'helm)
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)


(provide 'packages)
