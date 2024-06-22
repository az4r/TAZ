(defun c:taz_all2sof()
  
  (setq taz_all2sof_selekcja nil)
  (command "-scalelistedit" "D" "1:50 Sofi" "1000:50" "Z")
  (setvar "CANNOSCALE" "1:50 Sofi")
  
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
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Maßlinie Allgemein_1"))))
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
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Decke") (cons 62 7) (cons 6 "PUNKT2_S9"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Fugen") (cons 62 7) (cons 6 "AUSGEZOGEN"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )

  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Fugen") (cons 62 7) (cons 6 "ByLayer") (cons 370 18))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Gruendung") (cons 62 42) (cons 6 "AUSGEZOGEN") (cons 370 13))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Fugen") (cons 62 8) (cons 6 "GETRENNT2_S10") (cons 370 35))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Decke") (cons 62 42) (cons 6 "AUSGEZOGEN") (cons 370 13))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Ausstattung") (cons 62 42) (cons 6 "AUSGEZOGEN") (cons 370 13))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 62 250) (cons 8 "XR$6$Gruendung") (cons 6 "STRICHLINIE2_S3") (cons 370 13))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 62 253) (cons 8 "XR$6$Ausstattung") (cons 6 "AUSGEZOGEN") (cons 370 13))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 62 42) (cons 8 "XR$6$Wand") (cons 6 "AUSGEZOGEN") (cons 370 13))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 62 253) (cons 8 "XR$6$Fahrbahn") (cons 6 "AUSGEZOGEN") (cons 370 13))))
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

  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Fugen") (cons 62 7) (cons 6 "ALL_S23"))))
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
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 62 7) (cons 8 "XR$6$Decke") (cons 6 "VERDECKT2_S2") (cons 370 18))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_C" "252" "_LT" "ByLayer" "_S" "1.0000" "_LW" "ByLayer" "_TR" "0" "_LA" "DK-ING_Decke" "")
      (setq taz_all2sof_selekcja nil)
    )
  )

  (setq taz_all2sof_selekcja (ssget "X" (list (cons 0 "INSERT"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn
      (setq taz_aktualna_wartosc_qaflags (getvar "QAFLAGS"))
      (setvar "QAFLAGS" 5)
      (command "_explode" taz_all2sof_selekcja "")
      (setvar "QAFLAGS" taz_aktualna_wartosc_qaflags)
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Wand") (cons 62 7) (cons 6 "AUSGEZOGEN"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_TR" "JakWarstwa" "_LT" "SOF_ARBEITSFUGE" "_C" "1" "_S" "0.0500" "_LW" "ByLayer" "_LA" "DK-ING_Arbeitsfuge" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 62 8) (cons 8 "XR$6$Pfahlkopfbalken") (cons 6 "AUSGEZOGEN") (cons 370 18))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_TR" "JakWarstwa" "_LT" "SOF_ARBEITSFUGE" "_C" "1" "_S" "0.0500" "_LW" "ByLayer" "_LA" "DK-ING_Arbeitsfuge" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Wand") (cons 62 73) (cons 6 "AUSGEZOGEN"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Füllfläche") (cons 62 253) (cons 6 "AUSGEZOGEN") (cons 370 35))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_erase" taz_all2sof_selekcja "")
      (setq taz_all2sof_selekcja nil)
    )
  )

  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Fugen") (cons 62 117) (cons 6 "AUSGEZOGEN"))))
    (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_LT" "ByLayer" "_C" "252" "_LW" "ByLayer" "_LA" "DK-ING_Fugen" "")
      (setq taz_all2sof_selekcja nil)
    )
  )

  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Fugen") (cons 62 8) (cons 6 "AUSGEZOGEN"))))
    (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_LT" "ByLayer" "_C" "252" "_LW" "ByLayer" "_LA" "DK-ING_Fugen" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Füllfläche") (cons 62 117) (cons 6 "AUSGEZOGEN"))))
    (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_LT" "ByLayer" "_C" "ByLayer" "_LW" "ByLayer" "_LA" "DK-ING_Fugen" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Allgemein06") (cons 62 7) (cons 6 "AUSGEZOGEN"))))
    (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_LT" "ByLayer" "_C" "ByLayer" "_LW" "ByLayer" "_LA" "DK-ING_Fugen" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Bohrpfahl") (cons 62 8) (cons 6 "ALL_S23"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_TR" "JakWarstwa" "_LT" "ByLayer" "_C" "252" "_LW" "0.18" "_LA" "DK-ING_Bohrpfahl" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Bohrpfahl") (cons 62 7) (cons 6 "ALL_S23"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_TR" "JakWarstwa" "_LT" "ByLayer" "_C" "252" "_LW" "0.18" "_LA" "DK-ING_Bohrpfahl" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 8 "XR$6$Achsen") (cons 62 8) (cons 6 "GETRENNT2_S10"))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_TR" "JakWarstwa" "_LT" "ByLayer" "_C" "252" "_S" "10" "_LW" "0.18" "_LA" "DK-ING_Achse" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (setq taz_all2sof_selekcja (ssget "X" (list (cons 62 8) (cons 8 "XR$6$Bohrpfahl") (cons 6 "GETRENNT2_S10") (cons 370 13))))
  (if (equal taz_all2sof_selekcja nil)
    (princ)
    (progn  
      (command "_chprop" taz_all2sof_selekcja "" "_C" "252" "_LT" "ByLayer" "_S" "10.0000" "_LW" "0.18" "_TR" "JakWarstwa" "_LA" "DK-ING_Achse" "")
      (setq taz_all2sof_selekcja nil)
    )
  )
  
  (princ)
)