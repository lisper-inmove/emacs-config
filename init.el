(org-babel-load-file (expand-file-name "~/.emacs.d/emacs.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(exec-path-from-shell-arguments (quote ("-l")))
 '(git-gutter:added-sign "☀")
 '(git-gutter:ask-p nil)
 '(git-gutter:deleted-sign "☂")
 '(git-gutter:disabled-modes (quote (asm-mode image-mode)))
 '(git-gutter:lighter " GG")
 '(git-gutter:modified-sign "☁")
 '(git-gutter:separator-sign "|")
 '(git-gutter:update-interval 1)
 '(git-gutter:window-width 2)
 '(org-agenda-files (quote ("~/code/blog/org-mode.org" "~/code/blog/TODO.org")))
 '(package-selected-packages
   (quote
    (exec-path-from-shell spaceline-all-the-icons spaceline vue-mode elscreen treemacs-persp treemacs-magit treemacs-icons-dired treemacs-projectile treemacs-evil treemacs htmlize magit elpy use-package monokai-theme))))
(put 'narrow-to-region 'disabled nil)
