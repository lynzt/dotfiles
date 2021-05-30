;;; .config/doom/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;
;; relative line numbering
(setq
  display-line-numbers-type 'relative)
;;
;; projectile - auto set search path
(setq
  projectile-project-search-path '("~/coding/" "~/coding/tw/" "~/coding/react" "~/coding/interviews" "~/Dropbox/emacs/org"))

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

;; (map! :map general-override-mode-map
      ;; :nvm "," #'doom/leader
      ;; :ei "," #'doom/leader)


(setq evil-normal-state-cursor '(box "light blue")
      evil-insert-state-cursor '(bar "medium sea green")
      evil-visual-state-cursor '(hollow "orange"))

;; (setq doom-theme 'doom-dark+)
;; (setq doom-theme 'doom-losvkem)
;; (setq doom-theme 'doom-molokai)
;; (setq doom-theme 'doom-nord)
;; (setq doom-theme 'doom-gruvbox)
(setq doom-theme 'doom-Iosvkem)
;; (setq doom-theme 'doom-dracula)
;; (setq doom-theme 'doom-dracula-brighter-comments)

(setq doom-font (font-spec :family "JetBrains Mono" :size 14))
;;(setq doom-font (font-spec :family "Monoid" :size 12))

;;; modeline stuff - https://github.com/seagle0128/doom-modeline
(setq doom-modeline-icon (display-graphic-p))
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-major-mode-color-icon t)
(setq doom-modeline-indent-info t)
(setq doom-modeline-buffer-file-name-style 'truncate-upto-root)
(setq doom-modeline-modal-icon t)


(after! org
  (setq org-agenda-files (list "~/Dropbox/emacs/org/todo.org" )))



;; md-roam
(use-package! md-roam ; load immediately, before org-roam
  :config
  (setq md-roam-file-extension-single "md"))
    ;you can omit this if md, which is the default.

;; roam settings
(after! org
  (setq org-directory "~/Dropbox/emacs/org/"
        org-roam-directory (concat org-directory "roam")))

;; (after! org
;;   (setq org-roam-dailies-directory "~/Dropbox/emacs/org/roam/daily/"))

(setq org-roam-dailies-directory "~/Dropbox/emacs/org/roam/daily/")

(setq org-roam-dailies-capture-templates
      '(("d" "default" entry
         #'org-roam-capture--get-point
         "* %?"
         :file-name "daily/%<%Y-%m-%d-%a>"
         :head "#+title: %<%Y-%m-%d-%a>\n\n")))

(map! :leader
      (:prefix ("k" . "daily")
         :desc "New today" "k" #'org-roam-dailies-find-today
         :desc "See yesterday" "j" #'org-roam-dailies-find-yesterday
         :desc "See tomorrow" "l" #'org-roam-dailies-find-tomorrow
         :desc "Insert link" "i" #'org-roam-insert-immediate
         :desc "Find/Create note" "f" #'org-roam-find-file))

;; (defun org-roam-dailies-capture-today ()
;;   "Capture a note into the daily note for today."
;;   (interactive)
;;   (let ((org-roam-capture-templates org-roam-dailies-capture-templates)
;;         (org-roam-capture--info (list (cons 'time (current-time))))
;;         (org-roam-capture--context 'dailies))
;;     (org-roam--capture)))

        ;; org-journal-date-format "%A, %d %B %Y"
;; (after! org
;;   (setq org-journal-dir "~/Dropbox/emacs/org/journal/"
;;         org-journal-file-format "%Y-%m-%d-%a"
;;         org-journal-date-format "%Y-%m-%d-%a"
;;         org-journal-file-type 'yearly
;;         org-journal-date-prefix "** "))
;; show invisibles
(global-whitespace-mode +1)

(add-hook 'after-init-hook 'org-roam-mode)
