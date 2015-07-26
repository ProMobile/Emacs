(defun my-xml-mode-hook ()
(setq nxml-child-indent '4))    ; set tabs to 4
(add-hook 'nxml-mode-hook 'my-xml-mode-hook)
