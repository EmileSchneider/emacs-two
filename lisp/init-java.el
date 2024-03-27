(use-package lsp-java
  :ensure t
  :defer t
  :config
  (add-hook 'java-mode-hook #'lsp))

(use-package dap-java
  :ensure nil)

(provide 'init-java)
