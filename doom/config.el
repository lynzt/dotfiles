;;; .config/doom/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;
;; relative line numbering
(setq
  display-line-numbers-type 'relative)
;;
;; projectile - auto set search path
(setq
  projectile-project-search-path '("~/coding/" "~/coding/tw/" "~/coding/react" "~/coding/interviews"))

;;; "Switch to previously open buffer.
;;;     Repeated invocations toggle between the two most recently open buffers."
(defun er-switch-to-previous-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;;; er-switch-to-previous-buffer
(map! (:when
        :n "C-c b" #'er-switch-to-previous-buffer))

;;; (setq
;;; treemacs-position 'right)

(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

(setq evil-normal-state-cursor '(box "light blue")
      evil-insert-state-cursor '(bar "medium sea green")
      evil-visual-state-cursor '(hollow "orange"))

(setq doom-theme 'doom-dark+)
;; (setq doom-theme 'doom-losvkem)
;; (setq doom-theme 'doom-molokai)
;;; (setq doom-theme 'doom-nord)
;;; (setq doom-theme 'doom-dracula)

(setq doom-font (font-spec :family "Inconsolata" :size 14))

;;; modeline stuff - https://github.com/seagle0128/doom-modeline
(setq doom-modeline-icon (display-graphic-p))
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-major-mode-color-icon t)
(setq doom-modeline-indent-info t)
(setq doom-modeline-buffer-file-name-style 'truncate-upto-root)
(setq doom-modeline-modal-icon t)


(after! org
  (setq org-agenda-files (list "~/Dropbox/emacs/todo.org" )))

;; roam settings
(after! org
  (setq org-directory "~/Dropbox/emacs/org/"
        org-roam-directory (concat org-directory "roam")))

;; show invisibles
(global-whitespace-mode +1)
