(use-package helm
  :ensure t
  :init
  (helm-mode 1)
  :bind
  ("C-x C-f" . 'helm-find-files)
  ("C-x C-b" . 'helm-buffers-list)
  ("M-x" . 'helm-M-x)
  :config
  (define-key helm-map (kbd "TAB") 'helm-execute-persistent-action)
  (setq
   helm-input-idle-delay 0.01
   ;;helm-display-function 'helm-display-buffer-in-own-frame
   helm-split-window-inside-p t
   )
  )

(provide 'init-helm)
