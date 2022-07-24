;;; ui.el --- UI settings

;;; Code

;; Disable themes on load
(defun disable-all-themes ()
  "disable all active themes."
  (dolist (i custom-enabled-themes)
    (disable-theme i)))

(defadvice load-theme (before disable-themes-first activate)
  (disable-all-themes))

;; Set default font and theme
(set-frame-font "Source Code Pro 13" nil t)
(load-theme 'spacemacs-dark)

;; Maximize on startup
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Add some fancy transparency
(set-frame-parameter (selected-frame) 'alpha '(94 .  90))
(add-to-list 'default-frame-alist '(alpha . (90 . 90)))

(provide 'ui)
