(key-chord-define-global "VV" 'other-window)
(key-chord-define-global "BB" 'ido-switch-buffer)
(key-chord-define-global "PP" 'projectile-switch-project )
(key-chord-define-global "))" 'neotree-toggle)

(setq org-agenda-files (list "~/org/work.org"
                             "~/org/school.org"
                             "~/org/home.org"))

;;;show linenums, pwerline
(require 'linenum-mode)
(require 'powerline)
(powerline-default-theme)

;;;enable line numbers
(setq linum-mode t)

;;show fill column line
(require 'fill-column-indicator)
(setq fill-column-indicator t)

;;;make window big
(add-to-list 'default-frame-alist '(height . 80))
(add-to-list 'default-frame-alist '(width . 190))


;;;keybindings
(require 'helm-descbinds)
(helm-descbinds-mode)

(guru-global-mode +1)


(require 'guide-key)
(setq guide-key/guide-key-sequence '("C-x r" "C-x 4"))
(guide-key-mode 1)  ; Enable guide-key-mode
