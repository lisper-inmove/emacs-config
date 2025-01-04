(setq inhibit-startup-message t)
(require 'package)
(setq package-enable-at-startup nil)
; 使用清华源源: https://mirrors.tuna.tsinghua.edu.cn/help/elpa/
(setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/stable-melpa/")
                         ))
;; (setq package-archives '(("gnu"   . "http://1.15.88.122/gnu/")
;;                          ("melpa" . "http://1.15.88.122/melpa/")))

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

(setq org-babel-default-header-args:org '((:result . "silent")))

(defun load-org (directory)
  (setq dirname (expand-file-name directory))
  (setq config-files (mapc (lambda (x)) (directory-files-recursively dirname "\.org$")))
  (dolist (file config-files) (org-babel-load-file file))
  )

(load-org "~/.emacs.d/themes")
(load-org "~/.emacs.d/preload")
(load-org "~/.emacs.d/plugins")
(load-org "~/.emacs.d/program-language")
(load-org "~/.emacs.d/postload")

(add-to-list 'load-path "~/.emacs.d/lsp-bridge/")
(require 'yasnippet)
(yas-global-mode 1)
(require 'lsp-bridge)
(global-lsp-bridge-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(web-mode typescript-mode lsp-tailwindcss protobuf-mode flutter lsp-dart dockerfile-mode yasnippet-snippets yasnippet which-key w3m try rainbow-mode rainbow-delimiters magit k8s-mode json-mode helm-gtags helm-ls-git helm flycheck-pycheckers flycheck-mypy flycheck-pyflakes find-file-in-project elscreen elisp-demos docker counsel company-irony-c-headers company-irony company bm all-the-icons ace-window ace-jump-mode yaml-mode wfnames projectile powerline org-bullets neotree monokai-theme lua-mode lsp-mode json-snatcher iedit idle-highlight-mode htmlize goto-last-change git-gutter flycheck emmet-mode compat)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
