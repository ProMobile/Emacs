;; This file contains all customizations for JavaScript

;;(electric-indent-mode 1) ;; this mode gives us nice indenting. it should only be enabled for js-mode though...

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json'" . js2-mode))

(add-hook 'js2-mode-hook 'global-company-mode 1)
(add-hook 'js2-mode-hook 'electric-indent-mode 1)

;; show matching parens
(add-hook 'js2-mode-hook 'show-paren-mode 1)
(setq show-paren-delay 0)

;; always show line numbers
(add-hook 'js2-mode-hook 'linum-mode 1)
(setq linum-format "%d ")

(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; delete it on save
(standard-display-ascii ?\t "        ")

;; Display trailing whitespace
(setq-default show-trailing-whitespace t)
