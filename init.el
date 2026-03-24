(setq inhibit-startup-message t)
(require 'package)
(setq package-enable-at-startup nil)
; 使用清华源源: https://mirrors.tuna.tsinghua.edu.cn/help/elpa/
;; (setq package-archives '(("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                          ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
;;                          ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/stable-melpa/")
;;                          ))
;; (setq package-archives '(("gnu"   . "http://1.15.88.122/gnu/")
;;                          ("melpa" . "http://1.15.88.122/melpa/")))

(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa" . "https://melpa.org/packages/")
        ("org" . "https://orgmode.org/elpa/")))

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

(when (display-graphic-p)
  (load-org "~/.emacs.d/themes"))

(if (equal (getenv "ENABLE_GUI") "true")
  (load-org "~/.emacs.d/themes"))

(load-org "~/.emacs.d/preload")
(load-org "~/.emacs.d/plugins")
(load-org "~/.emacs.d/program-language")
(load-org "~/.emacs.d/postload")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("d97ac0baa0b67be4f7523795621ea5096939a47e8b46378f79e78846e0e4ad3d"
     "c9d837f562685309358d8dc7fccb371ed507c0ae19cf3c9ae67875db0c038632"
     default))
 '(git-gutter:added-sign "☀")
 '(git-gutter:ask-p nil)
 '(git-gutter:deleted-sign "☂")
 '(git-gutter:disabled-modes '(asm-mode image-mode))
 '(git-gutter:lighter " GG")
 '(git-gutter:modified-sign "☁")
 '(git-gutter:separator-sign "|")
 '(git-gutter:update-interval 1)
 '(git-gutter:window-width 2)
 '(package-selected-packages nil)
 '(safe-local-variable-values
   '((eval setq flycheck-gcc-include-path
           (list "/home/inmove/.opt/opencv/include/opencv4"
                 "/usr/local/include"))
     (eval setq flycheck-clang-include-path
           (list "/home/inmove/.opt/opencv/include/opencv4"
                 "/usr/local/include")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq warning-suppress-log-types '((mule)))
(setq confirm-nonexistent-file-or-buffer nil)
