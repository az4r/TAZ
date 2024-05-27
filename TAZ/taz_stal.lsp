(defun taz_polaczenie_zakladkowe_parametry()
  (if (equal (get_tile "taz_polaczenie_zakladkowe_rodzaj_sruby_dcl") "0")
    (progn
      (set_tile "taz_polaczenie_parametr_s_dcl" "12")
      (set_tile "taz_polaczenie_parametr_p_dcl" "21")
      (set_tile "taz_polaczenie_parametr_e_dcl" "11")
    )
    (princ)
  )
  (if (equal (get_tile "taz_polaczenie_zakladkowe_rodzaj_sruby_dcl") "1")
    (progn
      (set_tile "taz_polaczenie_parametr_s_dcl" "15")
      (set_tile "taz_polaczenie_parametr_p_dcl" "25")
      (set_tile "taz_polaczenie_parametr_e_dcl" "13")
    )
    (princ)
  )
  (if (equal (get_tile "taz_polaczenie_zakladkowe_rodzaj_sruby_dcl") "2")
    (progn
      (set_tile "taz_polaczenie_parametr_s_dcl" "18")
      (set_tile "taz_polaczenie_parametr_p_dcl" "30")
      (set_tile "taz_polaczenie_parametr_e_dcl" "16")
    )
    (princ)
  )
  (if (equal (get_tile "taz_polaczenie_zakladkowe_rodzaj_sruby_dcl") "3")
    (progn
      (set_tile "taz_polaczenie_parametr_s_dcl" "24")
      (set_tile "taz_polaczenie_parametr_p_dcl" "41")
      (set_tile "taz_polaczenie_parametr_e_dcl" "22")
    )
    (princ)
  )
  (if (equal (get_tile "taz_polaczenie_zakladkowe_rodzaj_sruby_dcl") "4")
    (progn
      (set_tile "taz_polaczenie_parametr_s_dcl" "30")
      (set_tile "taz_polaczenie_parametr_p_dcl" "50")
      (set_tile "taz_polaczenie_parametr_e_dcl" "26")
    )
    (princ)
  )
  (if (equal (get_tile "taz_polaczenie_zakladkowe_rodzaj_sruby_dcl") "5")
    (progn
      (set_tile "taz_polaczenie_parametr_s_dcl" "36")
      (set_tile "taz_polaczenie_parametr_p_dcl" "60")
      (set_tile "taz_polaczenie_parametr_e_dcl" "31")
    )
    (princ)
  )
  (if (equal (get_tile "taz_polaczenie_zakladkowe_rodzaj_sruby_dcl") "6")
    (progn
      (set_tile "taz_polaczenie_parametr_s_dcl" "45")
      (set_tile "taz_polaczenie_parametr_p_dcl" "75")
      (set_tile "taz_polaczenie_parametr_e_dcl" "39")
    )
    (princ)
  )
)

(defun taz_polaczenie_zakladkowe_widok_korekta_rozstawu()
  (if (and (equal (get_tile "taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie_dcl") "1") (equal (get_tile "taz_polaczenie_zakladkowe_ilosc_srub_w_pionie_dcl") "1"))
    (set_tile "taz_polaczenie_parametr_p_dcl" "0")
    (princ)
  )
)

(defun taz_polaczenie_zakladkowe_widok ( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
    (command "_erase" taz_polaczenie_zakladkowe_scalenie "")
    (setq taz_polaczenie_zakladkowe_scalenie (ssadd))
    (command "_UCS" "_P")
    (command "_layer" "_S" taz_aktualna_warstwa "")
    (princ)
  )
  (command "_UCS" "_W")
  (setq taz_aktualna_warstwa (getvar "CLAYER"))
  
 (defun taz_polaczenie_zakladkowe_widok_wywolaj_okno()
   (new_dialog "taz_polaczenie_zakladkowe_widok_okno" (load_dialog "C:\\TAZ\\DCL\\taz_polaczenie_zakladkowe_widok.DCL"))
   (set_tile "taz_polaczenie_zakladkowe_rodzaj_sruby_dcl" taz_polaczenie_zakladkowe_rodzaj_sruby)
   (set_tile "taz_polaczenie_parametr_s_dcl" taz_polaczenie_parametr_s)
   (set_tile "taz_polaczenie_parametr_p_dcl" taz_polaczenie_parametr_p)
   (set_tile "taz_polaczenie_parametr_e_dcl" taz_polaczenie_parametr_e)
   (set_tile "taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie_dcl" taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie)
   (set_tile "taz_polaczenie_zakladkowe_ilosc_srub_w_pionie_dcl" taz_polaczenie_zakladkowe_ilosc_srub_w_pionie)
   (action_tile
     "cancel"
     "(setq taz_wyjscie_z_funkcji_status \"1\")
     (done_dialog)"
   )
   (action_tile
     "accept"
     "(setq taz_polaczenie_zakladkowe_rodzaj_sruby (get_tile \"taz_polaczenie_zakladkowe_rodzaj_sruby_dcl\"))
     (setq taz_polaczenie_parametr_s (get_tile \"taz_polaczenie_parametr_s_dcl\"))
     (setq taz_polaczenie_parametr_p (get_tile \"taz_polaczenie_parametr_p_dcl\"))
     (setq taz_polaczenie_parametr_e (get_tile \"taz_polaczenie_parametr_e_dcl\"))
     (setq taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie (get_tile \"taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie_dcl\"))
     (setq taz_polaczenie_zakladkowe_ilosc_srub_w_pionie (get_tile \"taz_polaczenie_zakladkowe_ilosc_srub_w_pionie_dcl\"))
     (done_dialog)"
   )
   (taz_polaczenie_zakladkowe_widok_schemat "taz_polaczenie_zakladkowe_widok_schemat_key")
   (start_dialog)
   (unload_dialog (load_dialog "C:\\TAZ\\DCL\\taz_polaczenie_zakladkowe_widok.DCL"))
   (taz_wyjscie_z_funkcji)
   (cond
     ((equal taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie "0") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((equal taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie "") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((equal taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie nil) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((not (wcmatch taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie "#,##")) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((equal taz_polaczenie_zakladkowe_ilosc_srub_w_pionie "0") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((equal taz_polaczenie_zakladkowe_ilosc_srub_w_pionie "") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((equal taz_polaczenie_zakladkowe_ilosc_srub_w_pionie nil) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((not (wcmatch taz_polaczenie_zakladkowe_ilosc_srub_w_pionie "#,##")) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ;((equal taz_polaczenie_parametr_s "0") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((equal taz_polaczenie_parametr_s "") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((equal taz_polaczenie_parametr_s nil) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((not (wcmatch taz_polaczenie_parametr_s "#,##")) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((equal taz_polaczenie_parametr_p "") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((equal taz_polaczenie_parametr_p nil) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((not (wcmatch taz_polaczenie_parametr_p "#,##")) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ;((equal taz_polaczenie_parametr_e "0") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((equal taz_polaczenie_parametr_e "") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((equal taz_polaczenie_parametr_e nil) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
     ((not (wcmatch taz_polaczenie_parametr_e "#,##")) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
   )
 )

(defun taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane()
  (alert "Niepoprawne dane")			
  (new_dialog "taz_polaczenie_zakladkowe_widok_okno" (load_dialog "C:\\TAZ\\DCL\\taz_polaczenie_zakladkowe_widok.DCL"))
  (set_tile "taz_polaczenie_zakladkowe_rodzaj_sruby_dcl" taz_polaczenie_zakladkowe_rodzaj_sruby)
  (set_tile "taz_polaczenie_parametr_s_dcl" taz_polaczenie_parametr_s)
  (set_tile "taz_polaczenie_parametr_p_dcl" taz_polaczenie_parametr_p)
  (set_tile "taz_polaczenie_parametr_e_dcl" taz_polaczenie_parametr_e)
  (set_tile "taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie_dcl" taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie)
  (set_tile "taz_polaczenie_zakladkowe_ilosc_srub_w_pionie_dcl" taz_polaczenie_zakladkowe_ilosc_srub_w_pionie)
  (action_tile
    "cancel"
    "(setq taz_wyjscie_z_funkcji_status \"1\")
    (done_dialog)"
  )
  (action_tile
    "accept"
    "(setq taz_polaczenie_parametr_s (get_tile \"taz_polaczenie_parametr_s_dcl\"))
    (setq taz_polaczenie_parametr_p (get_tile \"taz_polaczenie_parametr_p_dcl\"))
    (setq taz_polaczenie_parametr_e (get_tile \"taz_polaczenie_parametr_e_dcl\"))
    (setq taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie (get_tile \"taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie_dcl\"))
    (setq taz_polaczenie_zakladkowe_ilosc_srub_w_pionie (get_tile \"taz_polaczenie_zakladkowe_ilosc_srub_w_pionie_dcl\"))
    (done_dialog)"
  )
  (taz_polaczenie_zakladkowe_widok_schemat "taz_polaczenie_zakladkowe_widok_schemat_key")
  (start_dialog)
  (unload_dialog (load_dialog "C:\\TAZ\\DCL\\taz_polaczenie_zakladkowe_widok.DCL"))
  (taz_wyjscie_z_funkcji)
  (cond
    ((equal taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie "0") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((equal taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie "") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((equal taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie nil) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((not (wcmatch taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie "#,##")) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((equal taz_polaczenie_zakladkowe_ilosc_srub_w_pionie "0") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((equal taz_polaczenie_zakladkowe_ilosc_srub_w_pionie "") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((equal taz_polaczenie_zakladkowe_ilosc_srub_w_pionie nil) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((not (wcmatch taz_polaczenie_zakladkowe_ilosc_srub_w_pionie "#,##")) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ;((equal taz_polaczenie_parametr_s "0") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((equal taz_polaczenie_parametr_s "") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((equal taz_polaczenie_parametr_s nil) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((not (wcmatch taz_polaczenie_parametr_s "#,##")) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((equal taz_polaczenie_parametr_p "") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((equal taz_polaczenie_parametr_p nil) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((not (wcmatch taz_polaczenie_parametr_p "#,##")) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ;((equal taz_polaczenie_parametr_e "0") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((equal taz_polaczenie_parametr_e "") (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((equal taz_polaczenie_parametr_e nil) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
    ((not (wcmatch taz_polaczenie_parametr_e "#,##")) (taz_polaczenie_zakladkowe_widok_wywolaj_okno_niepoprawne_dane))
  )
)
  (taz_polaczenie_zakladkowe_widok_wywolaj_okno)
  (setq taz_polaczenie_zakladkowe_widok_punkt_wstawienia (getpoint "\nWskaz punkt wstawienia polaczenia: "))
  (setq taz_polaczenie_zakladkowe_scalenie (ssadd))
  
  ;######### OTWORY #########
  (command "_ZOOM" "_SCALE" "10000X")
  (command "_layer" "_S" "TAZ_AXIS" "")
  (setq taz_polaczenie_zakladkowe_aktualny_punktx "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punkty "0")
  (repeat (atoi taz_polaczenie_zakladkowe_ilosc_srub_w_pionie)
    (setq taz_polaczenie_zakladkowe_aktualny_punktx "0")
    (repeat (atoi taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie)
      (command "_point" (list (atoi taz_polaczenie_zakladkowe_aktualny_punktx) (atoi taz_polaczenie_zakladkowe_aktualny_punkty))) (ssadd (entlast) taz_polaczenie_zakladkowe_scalenie)
      (setq taz_polaczenie_zakladkowe_srodek (list (/ (cadr (assoc 10 (entget (entlast)))) 2) (/ (caddr (assoc 10 (entget (entlast)))) 2)))
      (setq taz_polaczenie_zakladkowe_aktualny_punktx (itoa (+ (atoi taz_polaczenie_zakladkowe_aktualny_punktx) (atoi taz_polaczenie_parametr_p))))
    )
    (setq taz_polaczenie_zakladkowe_aktualny_punkty (itoa (+ (atoi taz_polaczenie_zakladkowe_aktualny_punkty) (atoi taz_polaczenie_parametr_p))))
  )
  
  ;######### KRAWEDZ ELEMENTU #########
  (command "_layer" "_S" "TAZ_SECTION" "")
  (setq taz_polaczenie_zakladkowe_aktualny_punktx1 "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punkty1 "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punktx2 "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punkty2 "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punktx1 (itoa (- (atoi taz_polaczenie_zakladkowe_aktualny_punktx1) (atoi taz_polaczenie_parametr_s))))
  (setq taz_polaczenie_zakladkowe_aktualny_punkty1 (itoa (- (atoi taz_polaczenie_zakladkowe_aktualny_punkty1) (atoi taz_polaczenie_parametr_s))))
  (setq taz_polaczenie_zakladkowe_aktualny_punktx2 (itoa (+ (* (+ (atoi taz_polaczenie_zakladkowe_aktualny_punktx2) (atoi taz_polaczenie_parametr_p)) (1- (atoi taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie))) (atoi taz_polaczenie_parametr_s))))
  (setq taz_polaczenie_zakladkowe_aktualny_punkty2 (itoa (+ (* (+ (atoi taz_polaczenie_zakladkowe_aktualny_punkty2) (atoi taz_polaczenie_parametr_p)) (1- (atoi taz_polaczenie_zakladkowe_ilosc_srub_w_pionie))) (atoi taz_polaczenie_parametr_s))))
  (command "_rectang" (list (atoi taz_polaczenie_zakladkowe_aktualny_punktx1) (atoi taz_polaczenie_zakladkowe_aktualny_punkty1)) (list (atoi taz_polaczenie_zakladkowe_aktualny_punktx2) (atoi taz_polaczenie_zakladkowe_aktualny_punkty2))) (ssadd (entlast) taz_polaczenie_zakladkowe_scalenie)


  ;######### KRAWEDZ BLACHY #########
  (command "_layer" "_S" "TAZ_VIEW" "")
  (setq taz_polaczenie_zakladkowe_aktualny_punktx1 "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punkty1 "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punktx2 "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punkty2 "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punktx1 (itoa (- (atoi taz_polaczenie_zakladkowe_aktualny_punktx1) (atoi taz_polaczenie_parametr_e))))
  (setq taz_polaczenie_zakladkowe_aktualny_punkty1 (itoa (- (atoi taz_polaczenie_zakladkowe_aktualny_punkty1) (atoi taz_polaczenie_parametr_e))))
  (setq taz_polaczenie_zakladkowe_aktualny_punktx2 (itoa (+ (* (+ (atoi taz_polaczenie_zakladkowe_aktualny_punktx2) (atoi taz_polaczenie_parametr_p)) (1- (atoi taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie))) (atoi taz_polaczenie_parametr_e))))
  (setq taz_polaczenie_zakladkowe_aktualny_punkty2 (itoa (+ (* (+ (atoi taz_polaczenie_zakladkowe_aktualny_punkty2) (atoi taz_polaczenie_parametr_p)) (1- (atoi taz_polaczenie_zakladkowe_ilosc_srub_w_pionie))) (atoi taz_polaczenie_parametr_e))))
  (command "_rectang" (list (atoi taz_polaczenie_zakladkowe_aktualny_punktx1) (atoi taz_polaczenie_zakladkowe_aktualny_punkty1)) (list (atoi taz_polaczenie_zakladkowe_aktualny_punktx2) (atoi taz_polaczenie_zakladkowe_aktualny_punkty2))) (ssadd (entlast) taz_polaczenie_zakladkowe_scalenie)
  (command "_ZOOM" "_SCALE" "0.0001X")
  (command "_group" "_C" "*" "" taz_polaczenie_zakladkowe_scalenie "")
  (command "_move" taz_polaczenie_zakladkowe_scalenie "" taz_polaczenie_zakladkowe_srodek taz_polaczenie_zakladkowe_widok_punkt_wstawienia)
  (setq taz_polaczenie_zakladkowe_scalenie (ssadd))
  (command "_UCS" "_P")
  (command "_layer" "_S" taz_aktualna_warstwa "")
  (princ)
)

(defun taz_polaczenie_zakladkowe_przekroj ( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
	(command "_erase" taz_polaczenie_zakladkowe_scalenie "")
    (setq taz_polaczenie_zakladkowe_scalenie (ssadd))
    (command "_UCS" "_P")
    (command "_layer" "_S" taz_aktualna_warstwa "")
    (princ)
  )
  (command "_UCS" "_W")
  (setq taz_aktualna_warstwa (getvar "CLAYER"))
  
  
  
  
  
  
  (taz_polaczenie_zakladkowe_parametry)
  
  
  
  
  
  
  
  (setq taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie (getstring (strcat "\nPodaj ilosc srub w polaczeniu poziomo: <" taz_aktualne_polaczenie_zakladkowe_ilosc_srub_w_poziomie ">")))
  (if (equal taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie "")
      (setq taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie taz_aktualne_polaczenie_zakladkowe_ilosc_srub_w_poziomie)
      (princ)
  )
  
  (setq taz_polaczenie_grubosc_blachy (getstring (strcat "\nPodaj sumaryczna grubosc blach w polaczeniu: <" taz_polaczenie_zal_grubosc_blachy ">")))
  (if (equal taz_polaczenie_grubosc_blachy "")
      (setq taz_polaczenie_grubosc_blachy taz_polaczenie_zal_grubosc_blachy)
      (princ)
  )
  
  (setq taz_polaczenie_zakladkowe_przekroj_punkt_wstawienia (getpoint "\nWskaz punkt wstawienia polaczenia: "))
  
  (setq taz_polaczenie_zakladkowe_scalenie (ssadd))
  
  ;######### OTWORY #########
  (command "_ZOOM" "_SCALE" "10000X")
  (command "_layer" "_S" "TAZ_AXIS" "")
  (setq taz_polaczenie_zakladkowe_aktualny_punktx "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punkty "0")
  
    (repeat (atoi taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie)
      (command "_pline" (list (atoi taz_polaczenie_zakladkowe_aktualny_punktx) (- (atoi taz_polaczenie_zakladkowe_aktualny_punkty) (/ (atoi taz_polaczenie_grubosc_blachy) 2))) (list (atoi taz_polaczenie_zakladkowe_aktualny_punktx) (+ (atoi taz_polaczenie_zakladkowe_aktualny_punkty) (/ (atoi taz_polaczenie_grubosc_blachy) 2))) "") (ssadd (entlast) taz_polaczenie_zakladkowe_scalenie)
      (setq taz_polaczenie_zakladkowe_srodek (list (/ (cadr (assoc 10 (entget (entlast)))) 2) 0))
      (setq taz_polaczenie_zakladkowe_aktualny_koncowy_punktx (itoa (atoi taz_polaczenie_zakladkowe_aktualny_punktx)))
      (setq taz_polaczenie_zakladkowe_aktualny_punktx (itoa (+ (atoi taz_polaczenie_zakladkowe_aktualny_punktx) (atoi taz_polaczenie_parametr_p))))
    )
  
  ;######### KRAWEDZ BLACHY #########
  (command "_layer" "_S" "TAZ_VIEW" "")
  (setq taz_polaczenie_zakladkowe_aktualny_punktx1 "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punkty1 "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punktx2 "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punkty2 "0")
  (setq taz_polaczenie_zakladkowe_aktualny_punktx1 (itoa (- (atoi taz_polaczenie_zakladkowe_aktualny_punktx1) (atoi taz_polaczenie_parametr_e))))
  (setq taz_polaczenie_zakladkowe_aktualny_punkty1 (itoa (- (atoi taz_polaczenie_zakladkowe_aktualny_punkty1) (/ (atoi taz_polaczenie_grubosc_blachy) 2))))
  (setq taz_polaczenie_zakladkowe_aktualny_punktx2 (itoa (+ (atoi taz_polaczenie_zakladkowe_aktualny_koncowy_punktx) (atoi taz_polaczenie_parametr_e))))
  (setq taz_polaczenie_zakladkowe_aktualny_punkty2 (itoa (* (atoi taz_polaczenie_zakladkowe_aktualny_punkty1) -1)))
  (command "_rectang" (list (atoi taz_polaczenie_zakladkowe_aktualny_punktx1) (atoi taz_polaczenie_zakladkowe_aktualny_punkty1)) (list (atoi taz_polaczenie_zakladkowe_aktualny_punktx2) (atoi taz_polaczenie_zakladkowe_aktualny_punkty2))) (ssadd (entlast) taz_polaczenie_zakladkowe_scalenie)
  (command "_ZOOM" "_SCALE" "0.0001X")
  (command "_group" "_C" "*" "" taz_polaczenie_zakladkowe_scalenie "")
  (command "_move" taz_polaczenie_zakladkowe_scalenie "" taz_polaczenie_zakladkowe_srodek taz_polaczenie_zakladkowe_przekroj_punkt_wstawienia)
  (setq taz_polaczenie_zakladkowe_scalenie (ssadd))
  (command "_UCS" "_P")
  (command "_layer" "_S" taz_aktualna_warstwa "")
  (princ)
)

(defun taz_polaczenie_zakladkowe_widok_schemat (taz_polaczenie_zakladkowe_widok_schemat_key / i j)
  (setq i (/ (dimx_tile taz_polaczenie_zakladkowe_widok_schemat_key) 201.) j (/ (dimy_tile taz_polaczenie_zakladkowe_widok_schemat_key) 201.))
  (start_image taz_polaczenie_zakladkowe_widok_schemat_key)
  (fill_image 0 0 (dimx_tile taz_polaczenie_zakladkowe_widok_schemat_key)(dimy_tile taz_polaczenie_zakladkowe_widok_schemat_key) -15)
  (foreach x '((9 200 184 200 250) (184 200 184 189 250) (184 189 115 189 250) (100 174 100 175 250) (100 175 100 175 250) (100 175 100 176 250) (100 176 100 177 250) (100 177 100 177 250) (100 177 100 178 250) (100 178 101 179 250) (101 179 101 180 250) (101 180 101 180 250) (101 180 101 181 250) (101 181 102 182 250) (102 182 102 182 250) (102 182 103 183 250) (103 183 103 183 250) (103 183 104 184 250) (104 184 104 184 250) (104 184 105 185 250) (105 185 105 185 250) (105 185 106 186 250) (106 186 106 186 250) (106 186 107 187 250) (107 187 108 187 250) (108 187 108 187 250) (108 187 109 188 250) (109 188 110 188 250) (110 188 110 188 250) (110 188 111 188 250) (111 188 112 189 250) (112 189 113 189 250) (113 189 113 189 250) (113 189 114 189 250) (114 189 115 189 250) (100 174 100 58 250) (115 43 114 43 250) (114 43 113 43 250) (113 43 113 44 250) (113 44 112 44 250) (112 44 111 44 250) (111 44 110 44 250) (110 44 110 44 250) (110 44 109 45 250) (109 45 108 45 250) (108 45 108 45 250) (108 45 107 46 250) (107 46 106 46 250) (106 46 106 46 250) (106 46 105 47 250) (105 47 105 47 250) (105 47 104 48 250) (104 48 104 48 250) (104 48 103 49 250) (103 49 103 50 250) (103 50 102 50 250) (102 50 102 51 250) (102 51 101 51 250) (101 51 101 52 250) (101 52 101 53 250) (101 53 101 53 250) (101 53 100 54 250) (100 54 100 55 250) (100 55 100 56 250) (100 56 100 56 250) (100 56 100 57 250) (100 57 100 58 250) (100 58 100 58 250) (115 43 184 43 250) (184 43 184 33 250) (184 33 9 33 250) (9 33 9 43 250) (9 43 78 43 250) (93 58 93 58 250) (93 58 93 57 250) (93 57 93 56 250) (93 56 93 56 250) (93 56 92 55 250) (92 55 92 54 250) (92 54 92 53 250) (92 53 92 53 250) (92 53 91 52 250) (91 52 91 51 250) (91 51 91 51 250) (91 51 90 50 250) (90 50 90 50 250) (90 50 89 49 250) (89 49 89 48 250) (89 48 88 48 250) (88 48 88 47 250) (88 47 87 47 250) (87 47 87 46 250) (87 46 86 46 250) (86 46 85 46 250) (85 46 85 45 250) (85 45 84 45 250) (84 45 84 45 250) (84 45 83 44 250) (83 44 82 44 250) (82 44 81 44 250) (81 44 81 44 250) (81 44 80 44 250) (80 44 79 43 250) (79 43 79 43 250) (79 43 78 43 250) (93 58 93 174 250) (78 189 79 189 250) (79 189 79 189 250) (79 189 80 189 250) (80 189 81 189 250) (81 189 81 188 250) (81 188 82 188 250) (82 188 83 188 250) (83 188 84 188 250) (84 188 84 187 250) (84 187 85 187 250) (85 187 85 187 250) (85 187 86 186 250) (86 186 87 186 250) (87 186 87 185 250) (87 185 88 185 250) (88 185 88 184 250) (88 184 89 184 250) (89 184 89 183 250) (89 183 90 183 250) (90 183 90 182 250) (90 182 91 182 250) (91 182 91 181 250) (91 181 91 180 250) (91 180 92 180 250) (92 180 92 179 250) (92 179 92 178 250) (92 178 92 177 250) (92 177 93 177 250) (93 177 93 176 250) (93 176 93 175 250) (93 175 93 175 250) (93 175 93 174 250) (78 189 9 189 250) (9 189 9 200 250) (184 158 100 158 250) (184 158 184 43 250) (134 87 134 86 250) (134 86 134 85 250) (134 85 133 84 250) (133 84 133 83 250) (133 83 132 83 250) (132 83 131 82 250) (131 82 130 82 250) (130 82 129 82 250) (129 82 128 82 250) (128 82 127 82 250) (127 82 126 83 250) (126 83 125 83 250) (125 83 124 84 250) (124 84 123 85 250) (123 85 123 86 250) (123 86 123 87 250) (123 87 123 89 250) (123 89 123 90 250) (123 90 124 91 250) (124 91 125 91 250) (125 91 126 92 250) (126 92 127 93 250) (127 93 128 93 250) (128 93 129 93 250) (129 93 130 93 250) (130 93 131 93 250) (131 93 132 92 250) (132 92 133 91 250) (133 91 133 91 250) (133 91 134 90 250) (134 90 134 89 250) (134 89 134 87 250) (161 87 161 86 250) (161 86 160 85 250) (160 85 160 84 250) (160 84 159 83 250) (159 83 158 83 250) (158 83 157 82 250) (157 82 156 82 250) (156 82 155 82 250) (155 82 154 82 250) (154 82 153 82 250) (153 82 152 83 250) (152 83 151 83 250) (151 83 150 84 250) (150 84 150 85 250) (150 85 149 86 250) (149 86 149 87 250) (149 87 149 89 250) (149 89 150 90 250) (150 90 150 91 250) (150 91 151 91 250) (151 91 152 92 250) (152 92 153 93 250) (153 93 154 93 250) (154 93 155 93 250) (155 93 156 93 250) (156 93 157 93 250) (157 93 158 92 250) (158 92 159 91 250) (159 91 160 91 250) (160 91 160 90 250) (160 90 161 89 250) (161 89 161 87 250) (134 114 134 113 250) (134 113 134 112 250) (134 112 133 111 250) (133 111 133 110 250) (133 110 132 109 250) (132 109 131 109 250) (131 109 130 108 250) (130 108 129 108 250) (129 108 128 108 250) (128 108 127 109 250) (127 109 126 109 250) (126 109 125 110 250) (125 110 124 111 250) (124 111 123 112 250) (123 112 123 113 250) (123 113 123 114 250) (123 114 123 115 250) (123 115 123 116 250) (123 116 124 117 250) (124 117 125 118 250) (125 118 126 118 250) (126 118 127 119 250) (127 119 128 119 250) (128 119 129 119 250) (129 119 130 119 250) (130 119 131 119 250) (131 119 132 118 250) (132 118 133 118 250) (133 118 133 117 250) (133 117 134 116 250) (134 116 134 115 250) (134 115 134 114 250) (161 114 161 113 250) (161 113 160 112 250) (160 112 160 111 250) (160 111 159 110 250) (159 110 158 109 250) (158 109 157 109 250) (157 109 156 108 250) (156 108 155 108 250) (155 108 154 108 250) (154 108 153 109 250) (153 109 152 109 250) (152 109 151 110 250) (151 110 150 111 250) (150 111 150 112 250) (150 112 149 113 250) (149 113 149 114 250) (149 114 149 115 250) (149 115 150 116 250) (150 116 150 117 250) (150 117 151 118 250) (151 118 152 118 250) (152 118 153 119 250) (153 119 154 119 250) (154 119 155 119 250) (155 119 156 119 250) (156 119 157 119 250) (157 119 158 118 250) (158 118 159 118 250) (159 118 160 117 250) (160 117 160 116 250) (160 116 161 115 250) (161 115 161 114 250) (129 79 129 96 250) (137 87 120 87 250) (155 79 155 96 250) (164 87 146 87 250) (129 105 129 123 250) (137 114 120 114 250) (155 105 155 123 250) (164 114 146 114 250) (100 20 100 0 250) (129 20 129 0 250) (93 6 135 6 250) (106 0 93 12 250) (122 12 135 0 250) (129 20 129 0 250) (155 20 155 0 250) (122 6 161 6 250) (135 0 122 12 250) (149 12 161 0 250) (155 20 155 0 250) (184 20 184 0 250) (149 6 190 6 250) (161 0 149 12 250) (178 12 190 0 250))
    (vector_image (fix (* (car x) i))(fix (* (cadr x) j))(fix (* (caddr x) i))(fix (* (cadddr x) j))(last x)))
  (end_image)
  (princ)
)