(eval-when-compile
  (require 'init-performance))

(require 'package)

(setq-default load-prefer-newer t)
;; I want orgmode before melpa or gnu
(setq package-archives
      '(("GNU ELPA"     . "https://elpa.gnu.org/packages/")
        ("MELPA"        . "https://melpa.org/packages/")
        ("NONGNU"       . "https://elpa.nongnu.org/nongnu/"))
      package-archive-priorities
      '(("GNU ELPA"     . 5)
        ("NONGNU"       . 3)
        ("MELPA"        . 0)))

;; configure use-package
(setq-default
 ;; use-package-always-defer t
 use-package-always-ensure t
 use-package-compute-statistics t
 use-package-verbose t)

(provide 'init-packages)
