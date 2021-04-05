;;MY EMACS CONFIGS
;;I AM USING THATS PLUGINS -> dracula-theme emmet-mode helm autopair auto-complete js2-mode lua-mode

(package-initialize)

;MELPA INITIALIZE
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (dracula)))
 '(custom-safe-themes
   (quote
    ("fe1c13d75398b1c8fd7fdd1241a55c286b86c3e4ce513c4292d01383de152cb7" default)))
 '(package-selected-packages
   (quote
    (0blayout logview lua-mode lsp-mode js2-mode auto-complete emmet-mode helm dracula-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;REMOVE WELCOME BUFFER
(setq inhibit-startup-screen t)
(menu-bar-mode 0);;REMOVE MENUBAR
(tool-bar-mode 0);;REMOVE TOOLBAR
(toggle-scroll-bar 0);;REMOVE  SCROLLBAR

(defun xah-new-empty-buffer ()
  "Create a new empty buffer.
New buffer will be named “untitled” or “untitled<2>”, “untitled<3>”, 
Version 2017-11-01"
  (interactive)
  (let (($buf (generate-new-buffer "untitled")))
    (switch-to-buffer $buf)
    (funcall initial-major-mode)
    (setq buffer-offer-save t)
    $buf
    ))

(setq initial-buffer-choice 'xah-new-empty-buffer );;START BUFFER IS EMPTY

(defvar my-linum-format-string "%3d");;LINE NUMBER LIKE VIM I STEELED CODE AND CHANGED IT

(add-hook 'linum-before-numbering-hook 'my-linum-get-format-string)

(defun my-linum-get-format-string ()
  (let* ((width (1- (length (number-to-string
                             (count-lines (point-min) (point-max))))))
         (format (concat "%" (number-to-string width) "d")))
    (setq my-linum-format-string format)))

(defvar my-linum-current-line-number -100)

(setq linum-format 'my-linum-relative-line-numbers)

(defun my-linum-relative-line-numbers (line-number)
  (let ((offset (+  line-number 0)))
    (propertize (format my-linum-format-string offset) 'face 'linum)))

(defadvice linum-update (around my-linum-update)
  (let ((my-linum-current-line-number (line-number-at-pos)))
    ad-do-it))
(ad-activate 'linum-update)

(global-set-key (kbd "C-x C-f") 'helm-find-files) ;;file finder
(global-set-key (kbd "M-x") 'helm-M-x) ;;COMMAND MODE
(global-set-key (kbd "C-< x") 'helm-mini) ;;HELPER  ASSISTANT

(ac-config-default) ;; ACTIVE AUTOCOMPLETE MODE
(autopair-global-mode)
(global-linum-mode)

(set-frame-parameter (selected-frame) 'alpha '(85 50))
(add-to-list 'default-frame-alist '(alpha 85 50))
