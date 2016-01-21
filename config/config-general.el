(defun top-join-line ()
  (interactive)
  (delete-indentation 1))

(defun mark-current-line ()
  (interactive)
  (end-of-line)
  (set-mark (line-beginning-position)))

(defun save-anyway ()
  "Save file, even if there is no change."
  (interactive)
  (set-buffer-modified-p t)
  (save-buffer))

(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-j") 'top-join-line)
(global-set-key (kbd "C-l") 'mark-current-line)
(global-set-key (kbd "C-x C-s") 'save-anyway)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key "\C-k" 'kill-whole-line)
(global-set-key "\C-w" 'backward-kill-word)

(global-set-key "\C-d" "\C-a\C- \C-n\M-w\C-y\C-p")
(global-linum-mode t) ;; Display line number in left column
(global-auto-revert-mode t) ;; Auto update file when change

;; Don't create backup files
(setq backup-inhibited t)
(setq auto-save-default nil)

(setq ring-bell-function 'ignore)

(windmove-default-keybindings) ;; move around with C-<arrow-key>

(provide 'config-general)



