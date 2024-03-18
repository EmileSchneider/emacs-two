(use-package exec-path-from-shell
  :ensure t
  :init (exec-path-from-shell-initialize))

(require 'dap-lldb)
(require 'dap-gdb-lldb)

(use-package dap-mode
  :ensure t
  :config
  (dap-ui-mode)
  (dap-ui-controls-mode 1)
  
  ;; installs .extension/vscode
  ;; (dap-gdb-lldb-setup)
  ;; (dap-register-debug-template
  ;;  "Rust::LLDB Run Configuration MY CONFIG"
  ;;  (list :type "lldb-vscode"
  ;;        :request "launch"
  ;;        :name "LLDB::Run"
  ;; 	 :gdbpath "rust-lldb"
  ;;        :target nil
  ;;        :cwd nil))
  
;; (dap-register-debug-template
;;    "Rust::GDB Run Configuration"
;;    (list :type "gdb"
;;          :request "launch"
;;          :name "GDB::Run"
;;          :gdbpath "rust-gdb"
;;          :target nil
;;          :cwd nil))
  )

(provide 'init-dap)
