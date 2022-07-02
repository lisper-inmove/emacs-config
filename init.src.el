(org-babel-load-file (expand-file-name "~/.emacs.d/basic.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/emacs.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/functions.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/publish.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/highlight-indent-guides.org"))
(setq org-babel-default-header-args:org '((:result . "silent")))
(setq configs (expand-file-name "~/.emacs.d/configs"))
(setq config-files (mapc (lambda (x))
                         (directory-files-recursively configs "\.org$")))
(dolist (file config-files)
  (org-babel-load-file file))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company-jedi company yasnippet-snippets use-package undo-tree monokai-theme magit iedit htmlize helm-ls-git helm-addressbook elscreen ace-window ace-jump-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
