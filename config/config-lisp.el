;;; lisp --- config for lisp languages
;;; Commentary:
;;; Code:

(require 'clojure-mode)
(require 'rainbow-delimiters)
(require 'paredit)

(defun lisp-mode-minors ()
  (setq tab-width 2)
  (paredit-mode 1)
  (rainbow-delimiters-mode 1)
  (show-paren-mode 1)
  (company-mode 1)
  (eldoc-mode 1)
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import
  (cljr-add-keybindings-with-prefix "C-c C-m"))

(add-hook 'clojure-mode-hook 'lisp-mode-minors)
(add-hook 'emacs-lisp-mode-hook 'lisp-mode-minors)

;; For proper indentation of om.next components
(put 'defui 'clojure-backtracking-indent '(1 :form (1)))
(put 'checking 'clojure-backtracking-indent '(2))
(put 'jdbc/atomic 'clojure-backtracking-indent '(1))

;; Paredit
(global-set-key (kbd "C-x )") 'paredit-forward-barf-sexp)
(global-set-key (kbd "C-x (") 'paredit-backward-barf-sexp)

(provide 'config-lisp)
;;; config-lisp ends here
