(setq make-backup-files nil)

(setq auto-save-file-name-transforms
      `((".*" , "~/.emacs.d/auto-saves/" t)))

;; line numbers
(display-line-numbers-mode)
(setq display-line-numbers 'relative)
(hl-line-mode)

(setq display-battery-mode t)


(provide 'init-general)
