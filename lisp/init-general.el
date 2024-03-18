(setq make-backup-files nil)

(setq auto-save-file-name-transforms
      `((".*" , "~/.emacs.d/auto-saves/" t)))

(provide 'init-general)
