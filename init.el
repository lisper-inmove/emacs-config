(setf config-dir "~/.emacs.d/")
(org-babel-load-file (expand-file-name "~/.emacs.d/basic.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/emacs.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/functions.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/publish.org"))
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
    (dashboard flycheck-clangcheck flycheck-pyflakes company-irony-c-headers company-irony helm-ls-git helm yasnippet-snippets protobuf-mode docker ini-mode org-bullets json-mode counsel find-file-in-project git-gutter iedit ace-window undo-tree py-autopep8 company-jedi exec-path-from-shell spaceline-all-the-icons spaceline vue-mode elscreen treemacs-persp treemacs-magit treemacs-icons-dired treemacs-projectile treemacs-evil treemacs htmlize magit elpy use-package monokai-theme))))
(put 'narrow-to-region 'disabled nil)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
