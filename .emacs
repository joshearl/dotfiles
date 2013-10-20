;; disable the splash screen
(setq inhibit-splash-screen t)

;; enable transient mark mode
(transient-mark-mode 1)

;; org-mode configuration
(require 'org)
(setq org-startup-indented t)

;; disable audible and visual alarms
(setq ring-bell-function 'ignore)

;; disable tool bar
(tool-bar-mode -1)

;; disable scroll bars
(scroll-bar-mode -1)

;; highlight current line
(global-hl-line-mode 1)

;; enable markdown support
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
