(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(defvar my-packages '(clojure-mode
		      expand-region
		      paredit
		      cider
		      projectile
		      rainbow-delimiters
		      color-theme-sanityinc-tomorrow
		      smex))

(when (not package-archive-contents)
  (package-refresh-contents))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(add-to-list 'load-path "~/.emacs.d/config")

(require 'config-general)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default)))
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(menu-bar-mode nil)
 '(mouse-wheel-follow-mouse (quote t))
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 1))))
 '(ns-alternate-modifier nil)
 '(ns-command-modifier (quote meta))
 '(scroll-bar-mode nil)
 '(scroll-conservatively 1000)
 '(scroll-margin 5)
 '(scroll-preserve-screen-position 1)
 '(scroll-step 1)
 '(show-trailing-whitespace t)
 '(tool-bar-mode nil)
 '(x-select-enable-clipboard t))

(load-theme 'sanityinc-tomorrow-night t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
