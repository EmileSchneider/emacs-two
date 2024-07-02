(use-package elpy
  :ensure t
  :defer t
  :init
  (elpy-enable))

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))

(provide 'init-python)
