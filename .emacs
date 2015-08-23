(add-to-list 'load-path "~/dev/emacs")
;(load-library "tabbar.el")
;(tabbar-mode)


(load-library "tree-widget.el")
(load-library "dir-tree.el")

(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;;; turn on syntax highlighting
(global-font-lock-mode 1)

;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "~/dev/emacs/groovy-mode.el" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'auto-mode-alist '("\.gradle$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;;; make Groovy mode electric by default.
(add-hook 'groovy-mode-hook
	  '(lambda ()
	     (require 'groovy-electric)
	                  (groovy-electric-mode)))

(setq tab-width 4)
(setq-default indent-tabs-mode nil)
