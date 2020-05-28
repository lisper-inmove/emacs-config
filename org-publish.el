(require 'ox-publish)
(require 'htmlize)

(setq org-publish-project-alist
      '(
        ("org-base"
         :base-directory "~/blog/"
         :base-extension "org"
         :publishing-directory "/ssh:root@inmove.com.cn#13921:/home/inmove/www/blog/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :auto-preamble t
         :html-link-home "https://inmove.com.cn/index.html"
         :section-number nil
         :sitemap-file-entry-format "%d ====> %t"
         :html-doctype "html5"
         :table-of-contents nil
         )
        ("css"
         :base-directory "~/blog/css"
         :base-extension "css"
         :publishing-directory "/ssh:root@inmove.com.cn#13921:/home/inmove/www/blog/css/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("js"
         :base-directory "~/blog/js"
         :base-extension "js"
         :publishing-directory "/ssh:root@inmove.com.cn#13921:/home/inmove/www/blog/js/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ))
