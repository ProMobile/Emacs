;; This file contains global changes for all modes

(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)


(custom-set-variables
 '(column-number-mode 1) ;; always show colum info
 '(cua-mode t nil (cua-base)) ;; windows based copy/pase and undo
 '(inhibit-startup-buffer-menu -1) ;; blow away the start up screen buffer
 '(inhibit-startup-screen -1) ;; all the way
 '(initial-frame-alist (quote ((fullscreen . maximized))))) ;

;; enable ido mode everywhere
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; disable the tool bar
(tool-bar-mode -1)

;; ;; Set the frame title to the current buffer path
;; (when window-system
;;   (setq frame-title-format '(buffer-file-name "%f" ("%b")))
;;   (set-face-attribute 'default nil
;;                       :family "Inconsolata"
;;                       :height 140
;;                       :weight 'normal
;;                       :width 'normal)
;;   (set-default-font "DejaVu Sans Mono 10"))

;; show a indicator for empty line marks
(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

;; change any yes/no question to y/n
(defalias 'yes-or-no-p 'y-or-n-p)

;; move backup files to one central location
(setq backup-directory-alist `(("." . ,(expand-file-name "~/.emacs-backups"))))

;; set up tabs
(setq-default c-basic-indent 2)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
