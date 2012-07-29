(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)
;(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-o") (kbd "C-p C-e C-j"))
;(global-set-key (kbd "<S-return>") (kbd "\C-e\C-j"))
;(global-set-key [(shift return)] (kbd "C-e C-j"))
;(global-set-key "\C-]" 'other-window)
(global-set-key "\C-]" (kbd "C-x o"))
(global-set-key (kbd "M-g") 'goto-line)

;; Line number
(defun my-linum-hook()
  (linum-mode t))
;(global-linum-mode t)
(setq linum-format "%3d ")
(add-hook 'c-mode-common-hook 'my-linum-hook)

(provide 'init-short-cuts)
