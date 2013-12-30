(setq load-path (cons  "/opt/local/lib/erlang/lib/tools-2.6.8/emacs/" load-path))
(setq erlang-root-dir "/opt/local/lib/erlang")
(setq exec-path (cons "/opt/local/bin" exec-path))
(require 'erlang-start)
                            
(add-hook 'LaTeX-mode-hook 'TeX-source-correlate-mode)

(setq TeX-source-correlate-method 'synctex)

(add-hook 'LaTeX-mode-hook
      (lambda()
              (add-to-list 'TeX-expand-list
                           '("%q" skim-make-url))))

(defun skim-make-url ()
  (concat
     (TeX-current-line)
        " \""
           (expand-file-name (funcall file (TeX-output-extension) t)
                        (file-name-directory (TeX-master-file)))
              "\" \""
                 (buffer-file-name)
                    "\""))

(setq TeX-view-program-list
      '(("Skim" "/Applications/Skim.app/Contents/SharedSupport/displayline %q")))

(setq TeX-view-program-selection '((output-pdf "Skim")))

(add-hook 'LaTeX-mode-hook #'xetex-mode-hook)

(defun xetex-mode-hook ()
      (add-to-list 'TeX-command-list
                   '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t)))

(load-theme 'zenburn)
