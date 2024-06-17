(defun c:taz_dlugosc_preta ()
  (setq taz_aktualna_dlugosc_preta_otulina1 "0")
  (setq taz_aktualna_dlugosc_preta_otulina2 "0")
  (setq taz_dlugosc_preta_p1 (getpoint "\nWskaz poczatek preta: "))
  (setq taz_dlugosc_preta_p2 (getpoint taz_dlugosc_preta_p1 "\nWskaz koniec preta"))
  
  (setq taz_dlugosc_preta_otulina1 (getstring (strcat "\nPodaj odsuniecie poczatku preta (mm): <" taz_aktualna_dlugosc_preta_otulina1 ">")))
  (if (equal taz_dlugosc_preta_otulina1 "")
      (setq taz_dlugosc_preta_otulina1 taz_aktualna_dlugosc_preta_otulina1)
      (princ)
  )
  (setq taz_aktualna_dlugosc_preta_otulina1 taz_dlugosc_preta_otulina1)
  
  (setq taz_dlugosc_preta_otulina2 (getstring (strcat "\nPodaj odsuniecie konca preta (mm): <" taz_aktualna_dlugosc_preta_otulina2 ">")))
  (if (equal taz_dlugosc_preta_otulina2 "")
      (setq taz_dlugosc_preta_otulina2 taz_aktualna_dlugosc_preta_otulina2)
      (princ)
  )
  (setq taz_aktualna_dlugosc_preta_otulina2 taz_dlugosc_preta_otulina2)
  
  (setq taz_dlugosc_preta_rzeczywista_dl_preta (* 5 (fix (+ (/ (-(-(distance taz_dlugosc_preta_p1 taz_dlugosc_preta_p2) (atoi taz_dlugosc_preta_otulina1))(atoi taz_dlugosc_preta_otulina2)) 5) 0.0001))))
  
  (if (> taz_dlugosc_preta_rzeczywista_dl_preta 12000)
     (setq taz_dlugosc_preta_zbrojeniowego "12000")
     (setq taz_dlugosc_preta_zbrojeniowego (rtos (* 5 (fix (+ (/ (-(-(distance taz_dlugosc_preta_p1 taz_dlugosc_preta_p2) (atoi taz_dlugosc_preta_otulina1))(atoi taz_dlugosc_preta_otulina2)) 5) 0.0001)))))
  )
  
  (setq taz_dlugosc_preta_zbrojeniowego_komunikat (strcat "Maksymalna dlugosc preta wynosi: " taz_dlugosc_preta_zbrojeniowego " mm"))
  
  (princ taz_dlugosc_preta_zbrojeniowego_komunikat)
  (alert taz_dlugosc_preta_zbrojeniowego_komunikat)
  (princ)
)