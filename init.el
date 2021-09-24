(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


(defun helloworld()
  (message "hello hello"))
(global-set-key (kbd "<f2>") 'helloworld)

(require 'popwin)
(popwin-mode 1)

(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))
(global-set-key (kbd "s-/") 'hippie-expand)

(put 'dired-find-alternate-file 'disabled nil)
(with-eval-after-load 'dired
  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;;(fset 'yes-or-no-p 'y-or-n-p)

(tool-bar-mode -1)
;; (menu-bar-mode -1)
(scroll-bar-mode -1)
(setq initial-frame-alist (quote ((fullscreen . maximized))))
;;(global-linum-mode 1)
(setq inhibit-splash-screen 1)
(set-face-attribute 'default nil :height 140)
(setq make-backup-files nil)
(delete-selection-mode 1)
;; (global-hl-line-mode 1)
(load-theme 'wombat 1)

;; auto revert buffer
(global-auto-revert-mode 1)

;; disable auto-save
(setq auto-save-default nil)

;; show matched brace
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; expand-region
(global-set-key (kbd "C-=") 'er/expand-region)

;; indent
(setq c-default-style "linux"
      c-basic-offset 4)

;; open recent files
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

