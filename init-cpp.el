
; google c style
(load-file "~/.emacs.d/site-lisp/google/google-c-style.el")
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

; Ecom-c-style
;(load-file "~/.emacs.d/plugins/ecom-c-style.el")
;(add-hook 'c-mode-common-hook 'ecom-set-c-style)
;(add-hook 'c-mode-common-hook 'ecom-make-newline-indent)

; autopair
(add-to-list 'load-path "~/.emacs.d/site-lisp/autopair") ;; comment if autopair.el is in standard load path
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers

; yasnippet
(add-to-list 'load-path "~/.emacs.d/site-lisp/yasnippet")
(require 'yasnippet)
(yas/global-mode 1)

(provide 'init-cpp)

