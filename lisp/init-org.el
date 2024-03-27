(use-package org
  :ensure t
  :config
  (global-set-key (kbd "C-c o l") #'org-store-link)
  (global-set-key (kbd "C-c o a") #'org-agenda)
  (global-set-key (kbd "C-c o c") #'org-capture)

  (setq-default org-startup-indented t
                org-pretty-entities t
                org-use-sub-superscripts "{}"
                org-hide-emphasis-markers t
                org-startup-with-inline-images t
                org-image-actual-width '(300))
  
  (setq org-preview-latex-default-process 'dvipng)

  (setq org-preview-latex-process-alist
      '((dvipng :programs ("latex" "dvipng")
                :description "dvi > png"
                :message "you need to install the programs: latex and dvipng."
                :image-input-type "dvi"
                :image-output-type "png"
                :image-size-adjust (1.0 . 1.0)
                :latex-compiler ("latex -interaction nonstopmode -output-directory %o %f")
                :image-converter '("dvipng -D %D -T tight -o %O %F"))))
  )


(require 'org-tempo)

(use-package org-roam
  :ensure t)
(provide 'init-org)

;; (use-package org-fragtog
;;     :after org
;;     :custom
;;     (org-startup-with-latex-preview t)
;;     :hook
;;     (org-mode . org-fragtog-mode)
;;     :custom
;;     (org-format-latex-options
;;      (plist-put org-format-latex-options :scale 2)
;;      (plist-put org-format-latex-options :foreground 'auto)
;;      (plist-put org-format-latex-options :background 'auto)))
