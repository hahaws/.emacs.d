
;;

(setq org-todo-keywords
      '((sequence "TODO" "PART" "WAIT" "|" "DONE" "CANCEL" "WARN")))


(setq org-todo-keyword-faces
      '(("TODO" . "red")
	("PART" . "blue")
	("WAIT" . "grey")
	("DONE" . "green")
	("CANCEL" . "brown")
	("WARN" . "olive")))

(provide 'init-org)
