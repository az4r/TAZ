(defun taz_dezinstalacja()
  (if (equal (vl-string-search ";C:\\taz\\icons" (vla-get-SupportPath (vla-get-files  (vla-get-preferences (vlax-get-Acad-object))))) nil)
    (princ)
    (progn
      (vla-put-SupportPath (vla-get-files  (vla-get-preferences (vlax-get-Acad-object))) (vl-string-subst "" ";C:\\taz\\icons" (vla-get-SupportPath (vla-get-files  (vla-get-preferences (vlax-get-Acad-object))))))
      (princ)
    )
  )
)
(taz_dezinstalacja)
(command "CUIUNLOAD" "TAZ")
(princ "\n########## ODINSTALOWANO TOOLBAR AZ ##########")
(princ)