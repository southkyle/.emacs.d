; Window move
(windmove-default-keybindings 'meta)

;; Diff
(setq ediff-split-window-function 'split-window-horizontally)
(setq show-trailing-whitespace t)

;; Line number
(defun my-linum-hook()
  (linum-mode t))
;(global-linum-mode t)
(setq linum-format "%3d ")
(add-hook 'c-mode-common-hook 'my-linum-hook)


;; Usefull settings
(setq visible-bell t) ; 关闭出错时的提示声
(setq inhibit-startup-message t); 关闭开机画面
(column-number-mode t) ; 显示列号
(transient-mark-mode t) ;显示时间
(display-time)
(show-paren-mode t)

(auto-image-file-mode) ;让Emacs可以打开显示图片.

; the vim %
(global-set-key "%" 'match-paren)
(defun match-paren (arg)
"Go to the matching parenthesis if on parenthesis otherwise insert %"
(interactive "p")
(cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
      ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
      (t (self-insert-command (or arg 1)))))

(provide 'init-misc)

; winner mode
(when (fboundp 'winner-mode)
      (winner-mode 1))

; Window resize shortkey
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)


