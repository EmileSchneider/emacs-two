(defun update-load-path (&rest _)
  (dolist (dir '("lisp"))
    (push (expand-file-name dir user-emacs-directory) load-path)))

(update-load-path)

;; (require 'dap-lldb)

(require 'init-performance)
(require 'init-packages)

(require 'init-general)

(require 'init-ui)
(require 'init-dashboard)
(require 'init-whichkey)

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
   ))

(use-package company
  :ensure t
  :hook
  (prog-mode . company-mode))

(use-package yasnippet
  :ensure t
  :config
  (yas-reload-all)
  (add-hook 'prog-mode-hook 'yas-minor-mode)
  (add-hook 'text-mode-hook 'yas-minor-mode))

(use-package flycheck
  :ensure t)

;; (require 'init-lsp)
;; (require 'init-dap)

;; (use-package fsharp-mode
;;   :defer t
;;   :ensure t
;;   :config
;;   (setq-default fsharp-indent-offset 2)
;;   ;;(add-hook 'fsharp-mode-hook 'highlight-indentation-mode)
;;   )

(use-package haskell-mode
  :ensure t)

(use-package magit
  :ensure t)

;; (require 'init-rust)
(require 'init-python)

(require 'init-org)

(setenv "PATH" (concat "~/.ghcup/bin/ghc:" (getenv "PATH")))


(use-package clojure-mode
  :ensure t)

(use-package cider
  :ensure t)

(use-package smartparens-mode
  :ensure smartparens  ;; install the package
  :hook (prog-mode text-mode markdown-mode) ;; add `smartparens-mode` to these hooks
  :config
  ;; load default config
  (require 'smartparens-config))


;;
;; OCaml
;;

(let ((opam-share (ignore-errors (car (process-lines "opam" "var" "share")))))
  (when (and opam-share (file-directory-p opam-share))
    ;; Register Merlin
    (add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
    (autoload 'merlin-mode "merlin" nil t nil)
    ;; Automatically start it in OCaml buffers
    (add-hook 'tuareg-mode-hook 'merlin-mode t)
    (add-hook 'caml-mode-hook 'merlin-mode t)
    ;; Use opam switch to lookup ocamlmerlin binary
    (setq merlin-command 'opam)
    ;; To easily change opam switches within a given Emacs session, you can
    ;; install the minor mode https://github.com/ProofGeneral/opam-switch-mode
    ;; and use one of its "OPSW" menus.
    ))

(add-to-list 'load-path "/home/user/.opam/default/share/emacs/site-lisp")
(require 'ocp-indent)


;; Golang

(use-package go-mode
  :ensure t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("81f53ee9ddd3f8559f94c127c9327d578e264c574cda7c6d9daddaec226f87bb" "7964b513f8a2bb14803e717e0ac0123f100fb92160dcf4a467f530868ebaae3e" "ffafb0e9f63935183713b204c11d22225008559fa62133a69848835f4f4a758c" "456697e914823ee45365b843c89fbc79191fdbaff471b29aad9dcbe0ee1d5641" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "34cf3305b35e3a8132a0b1bdf2c67623bc2cb05b125f8d7d26bd51fd16d547ec" "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9" "013728cb445c73763d13e39c0e3fd52c06eefe3fbd173a766bfd29c6d040f100" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" default))
 '(haskell-stylish-on-save t)
 '(org-agenda-files nil)
 '(package-selected-packages
   '(tuareg highlight-indentation highlight-indentation-mode smartparens cider clojure-mode org-tempo which-key helm doom-modeline all-the-icons solarized-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
