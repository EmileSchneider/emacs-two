(use-package exec-path-from-shell
  :ensure t
  :init (exec-path-from-shell-initialize))

(require 'dap-lldb)
(require 'dap-gdb-lldb)

(use-package dap-mode
  :ensure t
  :config
  (dap-ui-mode)
  (dap-ui-controls-mode 1))

(provide 'init-dap)
