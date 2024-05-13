(defun taz_wczytaj_warstwy()

  (setq taz_aktualna_warstwa (getvar "CLAYER"))

  (if (tblsearch "LAYER" "TAZ_THIN")
    (princ)
	(command "_layer" "_M" "TAZ_THIN" "_C" "1" "" "")
  )
  
  (if (tblsearch "LAYER" "TAZ_VIEW")
    (princ)
	(command "_layer" "_M" "TAZ_VIEW" "_C" "2" "" "")
  )
  
  (if (tblsearch "LAYER" "TAZ_SECTION")
    (princ)
	(command "_layer" "_M" "TAZ_SECTION" "_C" "3" "" "")
  )
  
  (if (tblsearch "LAYER" "TAZ_HIDDEN")
    (princ)
	(progn
	  (if (tblsearch "LTYPE" "HIDDEN")
	    (princ)
	    (command "_linetype" "_L" "HIDDEN" "acadiso.lin" "")
	  )
	  (command "_layer" "_M" "TAZ_HIDDEN" "_C" "4" "" "_L" "HIDDEN" "" "")
	)
  )
  
  (if (tblsearch "LAYER" "TAZ_HELP")
    (princ)
	(command "_layer" "_M" "TAZ_HELP" "_C" "6" "" "")
  )
  
  (if (tblsearch "LAYER" "TAZ_CUT")
    (princ)
	(progn
	  (if (tblsearch "LTYPE" "DASHED")
	    (princ)
	    (command "_linetype" "_L" "DASHED" "acadiso.lin" "")
	  )
	  (command "_layer" "_M" "TAZ_CUT" "_C" "1" "" "_L" "DASHED" "" "")
	)
  )
  
  (if (tblsearch "LAYER" "TAZ_AXIS")
    (princ)
	(progn
	  (if (tblsearch "LTYPE" "CENTER")
	    (princ)
	    (command "_linetype" "_L" "CENTER" "acadiso.lin" "")
	  )
	  (command "_layer" "_M" "TAZ_AXIS" "_C" "7" "" "_L" "CENTER" "" "")
	)
  )
  
  (if (tblsearch "LAYER" "TAZ_HATCH")
    (princ)
	(command "_layer" "_M" "TAZ_HATCH" "_C" "8" "" "")
  )
  
  (if (tblsearch "LAYER" "TAZ_TEXT")
    (princ)
	(command "_layer" "_M" "TAZ_TEXT" "_C" "1" "" "")
  )
  
  (command "_layer" "_S" taz_aktualna_warstwa "")
  (princ)

)

(defun taz_start()
  (taz_wczytaj_warstwy)
  (load "C:\\TAZ\\taz_ogolny.lsp")
)

(taz_start)
(princ "\n#########################################")
(princ "\n########## TOOLBAR AZ WLACZONY ##########")
(princ "\n#########################################")
(princ)