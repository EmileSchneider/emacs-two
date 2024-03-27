(defun update-load-path (&rest _)
  (dolist (dir '("lisp"))
    (push (expand-file-name dir user-emacs-directory) load-path)))

(update-load-path)

(require 'dap-lldb)

(require 'init-performance)
(require 'init-packages)

(require 'init-general)

(require 'init-ui)
(require 'init-dashboard)

(require 'init-helm)
(require 'init-company)
(require 'init-yasnippets)
(require 'init-flycheck)
(require 'init-lsp)
(require 'init-dap)
(require 'init-magit)

(require 'init-fsharp)
(require 'init-rust)
(require 'init-icp)
(require 'init-lisp)
(require 'init-clojure)
(require 'init-java)
(require 'init-scala)
(require 'init-python)

(require 'init-org)
(require 'init-whichkey)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7964b513f8a2bb14803e717e0ac0123f100fb92160dcf4a467f530868ebaae3e" "ffafb0e9f63935183713b204c11d22225008559fa62133a69848835f4f4a758c" "456697e914823ee45365b843c89fbc79191fdbaff471b29aad9dcbe0ee1d5641" "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098" "34cf3305b35e3a8132a0b1bdf2c67623bc2cb05b125f8d7d26bd51fd16d547ec" "b5fd9c7429d52190235f2383e47d340d7ff769f141cd8f9e7a4629a81abc6b19" "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8" "7ec8fd456c0c117c99e3a3b16aaf09ed3fb91879f6601b1ea0eeaee9c6def5d9" "013728cb445c73763d13e39c0e3fd52c06eefe3fbd173a766bfd29c6d040f100" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" default))
 '(org-agenda-files nil)
 '(package-selected-packages
   '(org-tempo which-key helm doom-modeline all-the-icons solarized-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
