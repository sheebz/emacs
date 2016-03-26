;;;enable elpy
(require 'elpy)
(require 'indent-guide)
(setq indent-guide-char "•")
(indent-guide-global-mode)

(elpy-enable)
(setq elpy-use-ipython t)
;;;
;;;(company-quickhelp-mode 1)
(eval-after-load "python"
  '(progn
     (define-key python-mode-map (kbd "C-c C-d") 'helm-pydoc)))

(require 'pyenv-mode)

(defun projectile-pyenv-mode-set ()
  "Set pyenv version matching project name."
  (let ((project (projectile-project-name)))
    (if (member project (pyenv-mode-versions))
        (pyenv-mode-set project)
      (pyenv-mode-unset))))

(add-hook 'projectile-switch-project-hook 'projectile-pyenv-mode-set)

(require 'pytest)
(add-hook 'python-mode-hook
          (lambda ()
            (local-set-key "\C-ca" 'pytest-all)
            (local-set-key "\C-cm" 'pytest-module)
            (local-set-key "\C-c." 'pytest-one)
            (local-set-key "\C-cd" 'pytest-directory)
            (local-set-key "\C-cpa" 'pytest-pdb-all)
            (local-set-key "\C-cpm" 'pytest-pdb-module)
            (local-set-key "\C-cp." 'pytest-pdb-one)))
