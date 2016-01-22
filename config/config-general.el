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

(defun insert-blank-line-below ()
  "Insert a newline below the current line and put point at beginning."
  (interactive)
  (unless (eolp)
    (end-of-line))
  (newline-and-indent))

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)

(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-j") 'top-join-line)
(global-set-key (kbd "C-l") 'mark-current-line)
(global-set-key (kbd "C-x C-s") 'save-anyway)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-k") 'kill-whole-line)
(global-set-key (kbd "C-o") 'insert-blank-line-below)
(global-set-key (kbd "C-d") 'duplicate-line)

(global-auto-revert-mode t) ;; Auto update file when change

;; Don't create backup files
(setq backup-inhibited t)
(setq auto-save-default nil)

(setq ring-bell-function 'ignore)

(windmove-default-keybindings) ;; move around with C-<arrow-key>

(provide 'config-general)



