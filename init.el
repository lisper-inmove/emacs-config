(setq inhibit-startup-message t)
(require 'package)
(setq package-enable-at-startup nil)
; 使用清华源源: https://mirrors.tuna.tsinghua.edu.cn/help/elpa/
;; (setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                          ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
;;                          ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/stable-melpa/")
;;                          ))
(setq package-archives '(("gnu"   . "http://1.15.88.122/gnu/")
                         ("melpa" . "http://1.15.88.122/melpa/")))

;; (setq package-archives
;;       '(("gnu" . "https://elpa.gnu.org/packages/")
;;         ("nongnu" . "https://elpa.nongnu.org/nongnu/")
;;         ("melpa" . "https://melpa.org/packages/")
;;         ("org" . "https://orgmode.org/elpa/")))

(setq package-check-signature nil)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-initialize)
  (package-install 'use-package))
(require 'use-package-ensure)
(setq use-package-always-ensure t)

;; 一定要先加载的模块
(org-babel-load-file (expand-file-name "~/.emacs.d/preload/basic.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/preload/lsp-mode.org"))
(org-babel-load-file (expand-file-name "~/.emacs.d/themes/theme.org"))

;; 加载其它插件
(setq org-babel-default-header-args:org '((:result . "silent")))

(setq plugins (expand-file-name "~/.emacs.d/plugins"))
(setq config-files (mapc (lambda (x)) (directory-files-recursively plugins "\.org$")))
(dolist (file config-files) (org-babel-load-file file))

(setq plugins (expand-file-name "~/.emacs.d/program-language"))
(setq config-files (mapc (lambda (x)) (directory-files-recursively plugins "\.org$")))
(dolist (file config-files) (org-babel-load-file file))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(git-gutter:added-sign "☀")
 '(git-gutter:ask-p nil)
 '(git-gutter:deleted-sign "☂")
 '(git-gutter:disabled-modes '(asm-mode image-mode))
 '(git-gutter:lighter " GG")
 '(git-gutter:modified-sign "☁")
 '(git-gutter:separator-sign "|")
 '(git-gutter:update-interval 1)
 '(git-gutter:window-width 2)
 '(package-selected-packages
   '(json-mode yaml-mode smartparens browse-kill-ring idle-highlight-mode rainbow-delimiters try protobuf-mode flycheck treemacs-magit flycheck-pyflakes flymake-python-pyflakes yasnippet-snippets yasnippet undo-tree treemacs-persp treemacs-icons-dired treemacs-projectile treemacs-evil treemacs htmlize helm-gtags helm-ls-git helm find-file-in-project elscreen counsel ace-window ace-jump-mode lsp-mode use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
