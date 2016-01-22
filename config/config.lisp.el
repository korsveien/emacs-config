(defun lisp-mode-minors ()
  (setq tab-width 2)
  (paredit-mode 1)
  (smartparens-mode 0)
  (rainbow-delimiters-mode 1)
  (show-paren-mode 1)
  (eldoc-mode 1)

(add-hook 'clojure-mode-hook 'lisp-mode-minors)
(add-hook 'emacs-lisp-mode-hook 'lisp-mode-minors)

(provide 'config-lisp)
