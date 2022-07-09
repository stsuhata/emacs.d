(setq make-backup-files nil)
(setq auto-save-default nil)
(setq visible-bell t)

;; theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai t)

;; package
(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("org" . "https://orgmode.org/elpa/")
        ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; org-roam
(setq org-roam-v2-ack t)
(setq org-roam-db-location "~/.emacs.d/org-roam.db")
(setq org-roam-directory "~/Documents/org/org-roam/")
(setq org-roam-graph-executable "/usr/local/bin/dot")
(global-set-key (kbd "C-c n l") 'org-roam-buffer-toggle)
(global-set-key (kbd "C-c n f") 'org-roam-node-find)
(global-set-key (kbd "C-c n g") 'org-roam-graph)
(global-set-key (kbd "C-c n i") 'org-roam-node-insert)
(require 'org-roam)
(org-roam-setup)
