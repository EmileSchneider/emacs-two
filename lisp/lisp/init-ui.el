(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; theme

(use-package doom-themes
  :ensure t
  :init
  (load-theme 'doom-badger t)
  (doom-themes-treemacs-config)
  (setq neo-global--window nil)
  (setq hl-line-sticky-flag nil)
  (setq neo-vc-integration nil)
  (setq neotree-dir-button-keymap nil)
  (setq neotree-file-button-keymap nil)
  (setq neo-path--file-short-name nil)
  (setq neo-vc-for-node nil)
  (setq neo-buffer--insert-fold-symbol nil)
  (setq neo-buffer--node-list-set nil)
  (setq neo-buffer--newline-and-begin nil)
  (setq neo-global--select-window nil)
  (setq neo-buffer--insert-file-entry nil)
  (setq neo-buffer--insert-dir-entry nil)
  (setq neo-buffer--insert-root-entry nil))

(set-face-attribute 'default nil :height 100)

;; (use-package solarized-theme
;;   :ensure t
;;   :config
;;   (let ((current-hour (string-to-number (format-time-string "%H"))))
;;     (if (and (>= current-hour 6) (<= current-hour 18))
;;       (load-theme 'solarized-light t)
;;     (load-theme 'solarized-dark t))))



(use-package all-the-icons
  :ensure t)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

;; (set-default 'truncate-lines t)

(use-package highlight-identation
  :ensure t)

(provide 'init-ui)
