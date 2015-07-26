;; This file contains all customizations for Java

;; C-c C-o to figure out the hook for a particualr syntax position

(electric-indent-mode 1) ;; this mode gives us nice indenting. it should only be enabled for js-mode though...

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json'" . js2-mode))

(add-hook 'java-mode-hook 'global-company-mode 1)
(add-hook 'java-mode-hook 'electric-indent-mode 1)

;; show matching parens
(add-hook 'java-mode-hook 'show-paren-mode 1)
(setq show-paren-delay 0)

;; always show line numbers
(add-hook 'java-mode-hook 'linum-mode 1)
(setq linum-format "%d ")

(add-hook 'before-save-hook 'delete-trailing-whitespace) ;; delete it on save
(standard-display-ascii ?\t "        ")

;; Display trailing whitespace
(setq-default show-trailing-whitespace t)

;; Add some extra java style stuff
(c-add-style "my-java-style" '((c-continued-statement-offset 4))) ; If a statement continues on the next line, indent the continuation by 4
(defun my-java-mode-hook ()
    (c-set-style "my-java-style")
    (c-set-offset 'substatement-open 0) ; brackets should be at same indentation level as the statements they open
    (c-set-offset 'inline-open '0)
    (c-set-offset 'block-open '+)
    (c-set-offset 'brace-list-open '+)   ; all "opens" should be indented by the c-indent-level
    (c-set-offset 'case-label '+)        ; indent case labels by c-indent-level, too
    (c-set-offset 'arglist-close '0))    ; set the close paren on the same level
(add-hook 'java-mode-hook 'my-java-mode-hook)
