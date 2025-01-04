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
