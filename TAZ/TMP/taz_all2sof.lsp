(defun c:taz_all2sof()
  
  (setq taz_all2sof_selekcja nil)
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Text Allgemein_1"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
      
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$STANDARD_1"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Maﬂlinie Allgemein_1"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
      
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Allgemein07"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )  
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Achsen") (cons 62 1))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )  
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Erdung"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Notgehweg"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )  
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Gradiente"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )  
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Decke") (cons 62 7))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )  
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Achsen") (cons 62 7))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_TR" "JakWarstwa" "_LT" "ByLayer" "_C" "ByLayer" "_S" "10" "_LW" "ByLayer" "_LA" "DK-ING_Achse" "")
      (setq taz_all2sof_selekcja nil)
    )
  )  
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Decke") (cons 62 8))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn
      (command "_chprop" taz_all2sof_selekcja "" "_C" "252" "_LA" "DK-ING_Decke" "")
      (setq taz_all2sof_selekcja nil)
    )
  )  
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Gruendung") (cons 62 8))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_C" "252" "_LA" "DK-ING_Fundament" "")
      (setq taz_all2sof_selekcja nil)
    )
  )

  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Fugen") (cons 62 7))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_LT" "DASHED" "_C" "ByLayer" "_S" "0.2500" "_LW" "ByLayer" "_LA" "DK-ING_Detail" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Pfahlkopfbalken") (cons 62 8))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_C" "252" "_LA" "DK-ING_Fundament" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Leerrohre") (cons 62 7) (cons 6 "ALL_S23"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_TR" "JakWarstwa" "_LT" "DASHED" "_C" "252" "_S" "0.1000" "_LW" "0.13" "_LA" "DK-ING_Detail" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Leerrohre") (cons 62 7) (cons 6 "AUSGEZOGEN"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_TR" "JakWarstwa" "_C" "2" "_LW" "ByLayer" "_LA" "DK-ING_Detail" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Wand") (cons 62 7) (cons 6 "AUSGEZOGEN") (cons 370 18))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_TR" "JakWarstwa" "_LT" "ByLayer" "_C" "ByLayer" "_S" "0.2500" "_LW" "ByLayer" "_LA" "DK-ING_Wand" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Wand") (cons 62 7) (cons 6 "AUSGEZOGEN") (cons 370 25))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_TR" "JakWarstwa" "_LT" "ByLayer" "_C" "ByLayer" "_S" "0.2500" "_LW" "0.25" "_LA" "DK-ING_Wand" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (princ)
)