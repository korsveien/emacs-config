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
		      smex))

(when (not package-archive-contents)
  (package-refresh-contents))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(add-to-list 'load-path "~/.emacs.d/config")

(require 'config-general)

(custom-set-variables
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
