(load-theme 'tango-dark)
(setq inhibit-startup-screen t)
(auto-compression-mode 1)
(load-file "~/.emacs.d/sensible-defaults.el")
(sensible-defaults/increase-gc-threshold)
(sensible-defaults/backup-to-temp-directory)
(sensible-defaults/overwrite-selected-text)
(sensible-defaults/quiet-startup)
(sensible-defaults/always-highlight-code)
(sensible-defaults/refresh-buffers-when-files-change)
(sensible-defaults/show-matching-parens)

(add-to-list 'load-path "~/.emacs.d/elpa")
(setq-default indent-tabs-mode nil)
(when window-system
  (global-hl-line-mode))

;(global-prettify-symbols-mode t)

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "https://marmalade-repo.org/packages/") t)


(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))
(require 'auto-package-update)

(require 'auto-complete)
(require 'auto-complete-config)
(require 'ac-ispell)
(require 'ac-php)
(ac-config-default)
(ac-ispell-setup)

;;Org mode
(require 'org)
(require 'org-bullets)
(require 'ox-reveal)
(require 'ox-html5slide)
(require 'ox-impress-js)
(setq org-log-done 'time)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-hide-leading-stars t)
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-todo-keywords
           '((sequence "TODO(t)" "IN PROGRESS(p)" "BLOCKED(b)" "DONE(d)")))

;; FlySpell
(require 'flyspell)
(dolist (hook '(text-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1))))
(dolist (hook '(change-log-mode-hook log-edit-mode-hook))
  (add-hook hook (lambda () (flyspell-mode -1))))
(setq ispell-list-command "--list")
(if (eq system-type 'windows-nt)
    (setq ispell-program-name "c:\\bin\\Aspell\\bin\\aspell.exe")
)
(if (eq system-type 'windows-nt)
    (setq ispell-dictionary "english")
)
(require 'ispell)

;; linum-mode 
(require 'linum) 
(global-linum-mode 1)

;; backup files
;;(setq 
;;   backup-by-copying t      ; don't clobber symlinks 
;;   delete-old-versions t 
;;   kept-new-versions 6 
;;   kept-old-versions 2 
;;   version-control t
;;   backup-directory-alist
;;    '(("." . "~/.backups"))
;; )

;; PowerLine
(require 'powerline)
(powerline-default-theme)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(hl-line ((t (:background "gray25")))))
