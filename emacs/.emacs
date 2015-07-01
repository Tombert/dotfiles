(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(indent-tabs-mode nil)
 '(js-indent-level 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
(show-paren-mode 1)
(menu-bar-mode -1)
(add-to-list 'load-path "~/.emacs.d/lisp")
(global-auto-complete-mode)

(require 'multiple-cursors)
(global-set-key (kbd "M->") 'mc/mark-next-like-this)
(global-set-key (kbd "M-<") 'mc/mark-previous-like-this)

(xclip-mode 1)
