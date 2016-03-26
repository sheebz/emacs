;;;add melpa
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
 (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;;;proxy
(setq url-proxy-services
    '(("no_proxy" . "^\\(localhost\\|127.*\\|jpmchase.net|10.*\\)")))
;;;      ("http" . "proxy.com:8080")
   ;;;   ("https" . "proxy.com:8080")))
