;;; .config/doom/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;
;; relative line numbering
(setq
  display-line-numbers-type 'relative)
;;
;; projectile - auto set search path
(setq
  projectile-project-search-path '("~/coding/" "~/coding/tw/" "~/coding/react"))

;;; "Switch to previously open buffer.
;;;     Repeated invocations toggle between the two most recently open buffers."
(defun er-switch-to-previous-buffer ()
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;;; er-switch-to-previous-buffer
(map! (:when
        :n "C-c b" #'er-switch-to-previous-buffer))
