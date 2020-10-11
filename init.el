(org-babel-load-file (expand-file-name "~/.emacs.d/basic.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/my-functions.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/emacs.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/publish.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(git-gutter:added-sign "☀")
 '(git-gutter:ask-p nil)
 '(git-gutter:deleted-sign "☂")
 '(git-gutter:disabled-modes (quote (asm-mode image-mode)))
 '(git-gutter:lighter " GG")
 '(git-gutter:modified-sign "☁")
 '(git-gutter:separator-sign "|")
 '(git-gutter:update-interval 1)
 '(git-gutter:window-width 2)
 '(package-selected-packages
   (quote
    (treemacs-persp treemacs-magit treemacs-icons-dired treemacs-projectile treemacs-evil treemacs elpy dockerfile-mode git-gutter fuzzy-finder wgrep helm-addressbook helm-ls-git yasnippet-snippets yasnippet noccur color-moccur elscreen iedit htmlize ace-window auto-package-update magit ace-jump-mode helm monokai-theme undo-tree use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
