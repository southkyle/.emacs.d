(require 'init-frame-hooks)
;http://repo.or.cz/w/emacs.git/blob/23f9f5c788a0c2eb1b43f375fb24745ef5f2ffc6:/lisp/term/xterm.el
(defun fix-up-xterm-control-arrows ()
  (define-key function-key-map "\e[1;5A" [C-up])
  (define-key function-key-map "\e[1;5B" [C-down])
  (define-key function-key-map "\e[1;5C" [C-right])
  (define-key function-key-map "\e[1;5D" [C-left])
  (define-key function-key-map "\e[5A"   [C-up])
  (define-key function-key-map "\e[5B"   [C-down])
  (define-key function-key-map "\e[5C"   [C-right])
  (define-key function-key-map "\e[5D"   [C-left])
  (define-key function-key-map "\e[1;6A" [C-S-up])
  (define-key function-key-map "\e[1;6B" [C-S-down])

)
;(define-key map "\e[27;6;13~"  [C-S-return])
(add-hook 'after-make-console-frame-hooks
          (lambda ()
            (fix-up-xterm-control-arrows)
            (xterm-mouse-mode 1) ; Mouse in a terminal (Use shift to paste with middle button)
            (mwheel-install)))

(provide 'init-xterm)
