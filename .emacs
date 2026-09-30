;; -*- lexical-binding: t; -*-
;; Code is elisp or emacs-lisp
;; Ui Cleanup
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)
(show-paren-mode 1)
(setq show-paren-delay 0)


;; Package Manager (Melpa)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Dashboard Setup
(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-banner-logo-title "Welcome to the workstation Daksh"
        dashboard-center-content t
        dashboard-show-shortcuts nil
        dashboard-startup-banner "/home/nocturne/Downloads/icon.png"))

;; Theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(modus-vivendi-tinted))
 '(custom-safe-themes
   '("85dd762a698527b9e99f73e453b4fef42948afe54d326437f51e2e03a1104936"
     "a5a762a27f878c82bd2a3a39a283ab391dfe27ef659c9d601dfe8e13154a9857"
     "2493d0ad0bb94bd2ad297a6d76288751a532fd6d8d6af694ac14008caa6b7fa2"
     "28f3ac0f5fade64dc7e27abe9d32e7d85576c40940977e8e319f25055d3a28b7"
     "967c23e9ba179b80560774419f081df22e7674aac23c5c550b817e4a1ce7d058"
     default))
 '(package-selected-packages
   '(apheleia auto-auto-indent avy consult dashboard doom-modeline
	      exec-path-from-shell general lsp-mode lsp-ui magit
	      modus-themes orderless org-download org-super-agenda
	      org-superstar tokyo-night tree-sitter tree-sitter-langs
	      treemacs vertico yasnippet-snippets)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Packages

(require 'use-package)

(use-package exec-path-from-shell
  :ensure t
  :config
  (when (memq window-system '(mac ns x11))
    (exec-path-from-shell-initialize)))

(use-package general
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package vertico
  :ensure t
  :config
  (vertico-mode))

(use-package orderless
  :ensure t
  :config
  (add-to-list 'completion-styles 'orderless))
(use-package lsp-mode
  :ensure t
  :config
  (setq lsp-headerline-breadcrumb-enable nil))
(use-package lsp-ui
  :ensure t
  :config
  (setq lsp-ui-neighbor-window-enable-mouse nil))

(use-package magit
  :ensure t
  :bind
  ("C-x g" . magit-status))

(use-package doom-modeline
  :ensure t
  :config
  (doom-modeline-mode))


(use-package apheleia
  :ensure t
  :config
  (apheleia-global-mode +1))

(use-package tree-sitter
  :ensure t
  :config
  (global-tree-sitter-mode))

(use-package tree-sitter-langs
  :ensure t)

(use-package f
  :ensure t)

(use-package s
  :ensure t)

(use-package avy
  :ensure t)

(use-package dash
  :ensure t)

;; Font
(set-face-attribute 'default nil
                    :family "JetBrainsMono Nerd Font"
                    :height 120)

;; Org mode
(use-package org-download
  :ensure t
  :config
  (setq org-download-method 'directory
        org-download-directory "~/org/attachments"
        org-download-annotate-function 'org-download-annotate-link))

;; org mode
(use-package org-superstar
  :ensure t
  :hook (org-mode . org-superstar-mode)
  :config
  (setq org-superstar-headline-format
        '(" " " " " " " " " " " " " " " " " " " " " ")
        org-superstar-item-format
        '(" " " " " " " " " " " " " " " " " " " " " ")))

(use-package org-download
  :ensure t
  :config
  (setq org-download-method 'directory
        org-download-directory "~/org/attachments"
        org-download-annotate-function 'org-download-annotate-link))

;; Disable side scrolling
(setq mouse-wheel-tilt-scroll nil)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 0))) ;; Prevents shift+wheel from scrolling horizontally

(electric-pair-mode 1)
