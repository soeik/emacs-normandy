;;; core.el --- Core emacs sttings

;;; Code

(setq inhibit-startup-message t)
(setq make-backup-files nil) ; stop creating ~ files

;; Emacs ui tweaks
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)

(provide 'core)
