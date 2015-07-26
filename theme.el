(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized-master/")

(if window-system
    (load-theme 'solarized-dark t)
  (load-theme 'wombat t))
