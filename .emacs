(add-to-list 'load-path "~/.emacs.d")

(defconst my-emacs-file-dir "~/.hide" "My emacs tmp file and auto-save dir")

(setq backup-directory-alist 
      `((".*" . ,my-emacs-file-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,my-emacs-file-dir t)))


(tool-bar-mode nil)
(global-font-lock-mode t)
(setq scroll-margin 5
      scroll-conservatively 10000)


(show-paren-mode t)
(setq show-paren-style 'parentheses)


(fset 'yes-or-no-p 'y-or-n-p)


(display-time)
(setq display-time-24hr-format t)


(setq column-number-mode t)
(global-linum-mode t)


(setq frame-title-format "%f")


;只当前屏幕语法高亮
(setq font-lock-maximum-decoration t)


(setq x-select-enable-clipboard t)


(setq indent-tabs-mode nil)
(setq tab-always-indent nil)
(setq tab-width 4)
;newline auto indent
(define-key global-map (kbd "RET") 'newline-and-indent)

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(custom-set-variables
  '(js2-basic-offset 2)
  '(js2-bounce-indent-p t)
  )
