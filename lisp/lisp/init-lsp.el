(use-package lsp-mode
  :ensure t
  :commands lsp
  :hook
  ((fsharp-mode . lsp))  
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :custom
  (lsp-ui-peek-always-show nil)
  (lsp-ui-sideline-show-hover nil))

(provide 'init-lsp)
