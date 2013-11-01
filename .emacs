;; disable the splash screen
(setq inhibit-splash-screen t)

;; wrap long lines
(global-visual-line-mode t)

;; enable transient mark mode
(transient-mark-mode 1)

;; set default font
(set-face-attribute 'default nil :font "Inconsolata-16")

;; add shortcuts for window navigation
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;; org-mode configuration
(require 'org)
(setq org-startup-indented t)

;; disable audible and visual alarms
(setq ring-bell-function 'ignore)

;; disable tool bar
(tool-bar-mode -1)

;; disable scroll bars
(scroll-bar-mode -1)

;disable backupq
(setq backup-inhibited t)

;; add marmalade package repo
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; enable markdown support
(add-to-list 'load-path "~/.emacs.d/plugins/markdown-mode")
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; adds support for journaling in org-mode
;; http://metajack.im/2009/01/01/journaling-with-emacs-orgmode/
(setq journal-file "~/Dropbox/Documents/journal.org")
(defvar org-journal-file journal-file
  "Path to OrgMode journal file.")
(defvar org-journal-date-format "%Y-%m-%d"
  "Date format string for journal headings.")

(defun org-journal-entry ()
  "Create a new diary entry for today or append to an existing one."
  (interactive)
  (switch-to-buffer (find-file org-journal-file))
  (widen)
  (let ((isearch-forward t) (today (format-time-string org-journal-date-format)))
    (beginning-of-buffer)
    (unless (org-goto-local-search-headings today nil t)
      ((lambda ()
         (org-insert-heading)
         (insert today)
	 (end-of-buffer))))
    (org-show-entry)
    (org-narrow-to-subtree)
    (end-of-buffer)
    (insert "\n\n")))
(global-set-key (kbd "C-c j") 'org-journal-entry)

;; resize window bindings
(global-set-key (kbd "S-C-M-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-M-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-M-<down>") 'shrink-window)
(global-set-key (kbd "S-C-M-<up>") 'enlarge-window)

;; magit bindings
(global-set-key (kbd "C-x g") 'magit-status)
