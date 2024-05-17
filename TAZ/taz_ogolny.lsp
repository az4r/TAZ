(defun taz_warstwa_thin()
  (if (tblsearch "LAYER" "TAZ_THIN")
    (command "_layer" "_S" "TAZ_THIN" "")
    (progn
      (taz_wczytaj_warstwy)
      (command "_layer" "_S" "TAZ_THIN" "")
    )
  )
  (princ)
)

(defun taz_warstwa_view()
  (if (tblsearch "LAYER" "TAZ_VIEW")
    (command "_layer" "_S" "TAZ_VIEW" "")
    (progn
      (taz_wczytaj_warstwy)
      (command "_layer" "_S" "TAZ_VIEW" "")
    )
  )
  (princ)
)

(defun taz_warstwa_section()
  (if (tblsearch "LAYER" "TAZ_SECTION")
    (command "_layer" "_S" "TAZ_SECTION" "")
    (progn
      (taz_wczytaj_warstwy)
      (command "_layer" "_S" "TAZ_SECTION" "")
    )
  )
  (princ)
)

(defun taz_warstwa_hidden()
  (if (tblsearch "LAYER" "TAZ_HIDDEN")
    (command "_layer" "_S" "TAZ_HIDDEN" "")
    (progn
      (taz_wczytaj_warstwy)
      (command "_layer" "_S" "TAZ_HIDDEN" "")
    )
  )
  (princ)
)

(defun taz_warstwa_help()
  (if (tblsearch "LAYER" "TAZ_HELP")
    (command "_layer" "_S" "TAZ_HELP" "")
    (progn
      (taz_wczytaj_warstwy)
      (command "_layer" "_S" "TAZ_HELP" "")
    )
  )
  (princ)
)

(defun taz_warstwa_cut()
  (if (tblsearch "LAYER" "TAZ_CUT")
    (command "_layer" "_S" "TAZ_CUT" "")
    (progn
      (taz_wczytaj_warstwy)
      (command "_layer" "_S" "TAZ_CUT" "")
    )
  )
  (princ)
)

(defun taz_warstwa_axis()
  (if (tblsearch "LAYER" "TAZ_AXIS")
    (command "_layer" "_S" "TAZ_AXIS" "")
    (progn
      (taz_wczytaj_warstwy)
      (command "_layer" "_S" "TAZ_AXIS" "")
    )
  )
  (princ)
)

(defun taz_warstwa_hatch()
  (if (tblsearch "LAYER" "TAZ_HATCH")
    (command "_layer" "_S" "TAZ_HATCH" "")
    (progn
      (taz_wczytaj_warstwy)
      (command "_layer" "_S" "TAZ_HATCH" "")
    )
  )
  (princ)
)

(defun taz_przypisz_warstwe( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
    (princ)
  )
  (repeat 100
    (setvar "CECOLOR" "BYLAYER")
    (setvar "CELWEIGHT" -1)
    (setvar "CELTYPE" "BYLAYER")
    (setq taz_obiekt_do_zmiany_warstwy (entsel "\nWybierz obiekt do zmiany: "))
    (if (= taz_obiekt_do_zmiany_warstwy nil)
      (taz_przypisz_warstwe)
      (princ)
    )
    (command "_laymch" taz_obiekt_do_zmiany_warstwy "" "" "_Y")
    (setq taz_obiekt_do_zmiany_warstwy (ssadd))
  )
  (princ)
)

(defun taz_przypisz_wlasciwosci( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
    (princ)
  )
  (setq taz_obiekt_zrodlowy_do_przypisania_wlasciwosci (entsel "\nWybierz obiekt zrodlowy: "))
  (setq taz_obiekty_docelowe_do_przypisania_wlasciwosci_p1 (getpoint "\nWybierz obiekty docelowe: "))
  (setq taz_obiekty_docelowe_do_przypisania_wlasciwosci_p2 (getcorner taz_obiekty_docelowe_do_przypisania_wlasciwosci_p1 "\nWybierz obiekty docelowe: "))
  (setq taz_obiekty_docelowe_do_przypisania_wlasciwosci (ssget "_C" taz_obiekty_docelowe_do_przypisania_wlasciwosci_p1 taz_obiekty_docelowe_do_przypisania_wlasciwosci_p2))
  (command "_matchprop" taz_obiekt_zrodlowy_do_przypisania_wlasciwosci taz_obiekty_docelowe_do_przypisania_wlasciwosci "")
  (princ)
)

(defun taz_skala_1()
  (command "_setvar" "TEXTSTYLE" "TAZ_TS")
  (command "_textsize" "2")
  (command "-dimstyle" "_R" "TAZ_DS_1")
  (command "_setvar" "CMLEADERSTYLE" "TAZ_MLS_1")
  (setq taz_wspolczynnik_skali 1)
  (princ)
)

(defun taz_skala_5()
  (command "_setvar" "TEXTSTYLE" "TAZ_TS")
  (command "_textsize" "10")
  (command "-dimstyle" "_R" "TAZ_DS_5")
  (command "_setvar" "CMLEADERSTYLE" "TAZ_MLS_5")
  (setq taz_wspolczynnik_skali 5)
  (princ)
)

(defun taz_skala_10()
  (command "_setvar" "TEXTSTYLE" "TAZ_TS")
  (command "_textsize" "20")
  (command "-dimstyle" "_R" "TAZ_DS_10")
  (command "_setvar" "CMLEADERSTYLE" "TAZ_MLS_10")
  (setq taz_wspolczynnik_skali 10)
  (princ)
)

(defun taz_skala_20()
  (command "_setvar" "TEXTSTYLE" "TAZ_TS")
  (command "_textsize" "40")
  (command "-dimstyle" "_R" "TAZ_DS_20")
  (command "_setvar" "CMLEADERSTYLE" "TAZ_MLS_20")
  (setq taz_wspolczynnik_skali 20)
  (princ)
)

(defun taz_skala_50()
  (command "_setvar" "TEXTSTYLE" "TAZ_TS")
  (command "_textsize" "100")
  (command "-dimstyle" "_R" "TAZ_DS_50")
  (command "_setvar" "CMLEADERSTYLE" "TAZ_MLS_50")
  (setq taz_wspolczynnik_skali 50)
  (princ)
)

(defun taz_skala_100()
  (command "_setvar" "TEXTSTYLE" "TAZ_TS")
  (command "_textsize" "200")
  (command "-dimstyle" "_R" "TAZ_DS_100")
  (command "_setvar" "CMLEADERSTYLE" "TAZ_MLS_100")
  (setq taz_wspolczynnik_skali 100)
  (princ)
)

(defun taz_skala_200()
  (command "_setvar" "TEXTSTYLE" "TAZ_TS")
  (command "_textsize" "400")
  (command "-dimstyle" "_R" "TAZ_DS_200")
  (command "_setvar" "CMLEADERSTYLE" "TAZ_MLS_200")
  (setq taz_wspolczynnik_skali 200)
  (princ)
)

(defun taz_tekst_maly( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
    (command "_layer" "_S" taz_aktualna_warstwa "")
    (princ)
  )
  (if (equal taz_wspolczynnik_skali nil)
    (print "Najpierw wybierz skale")
    (progn
      (setq taz_aktualna_warstwa (getvar "CLAYER"))
      (command "_layer" "_S" "TAZ_TEXT" "")
      (command "_mtext" (getpoint "\nPodaj punkt wstawienia tekstu: ") "_H" (* taz_wspolczynnik_skali 2) (getvar "lastpoint") "\n" "")
      (command "_mtedit" (entlast))
      (command "_layer" "_S" taz_aktualna_warstwa "")
    )
  )
  (princ)
)

(defun taz_tekst_sredni( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
    (command "_layer" "_S" taz_aktualna_warstwa "")
    (princ)
  )
  (if (equal taz_wspolczynnik_skali nil)
    (print "Najpierw wybierz skale")
    (progn
      (setq taz_aktualna_warstwa (getvar "CLAYER"))
      (command "_layer" "_S" "TAZ_TEXT" "")
      (command "_mtext" (getpoint "\nPodaj punkt wstawienia tekstu: ") "_H" (* taz_wspolczynnik_skali 2.5) (getvar "lastpoint") "\n" "")
      (command "_mtedit" (entlast))
      (command "_layer" "_S" taz_aktualna_warstwa "")
    )
  )
  (princ)
)

(defun taz_tekst_duzy( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
    (command "_layer" "_S" taz_aktualna_warstwa "")
    (princ)
  )
  (if (equal taz_wspolczynnik_skali nil)
    (print "Najpierw wybierz skale")
    (progn
      (setq taz_aktualna_warstwa (getvar "CLAYER"))
      (command "_layer" "_S" "TAZ_TEXT" "")
      (command "_mtext" (getpoint "\nPodaj punkt wstawienia tekstu: ") "_H" (* taz_wspolczynnik_skali 3) (getvar "lastpoint") "\n" "")
      (command "_mtedit" (entlast))
      (command "_layer" "_S" taz_aktualna_warstwa "")
    )
  )
  (princ)
)

(defun taz_strzalka_opisu( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
    (princ)
  )
  (if (equal taz_wspolczynnik_skali nil)
    (print "Najpierw wybierz skale")
    (progn
      (setq taz_aktualna_warstwa (getvar "CLAYER"))
      (setq taz_strzalka_opisu_p1 (getpoint "\nWskaz pierwszy punkt dla strzalki opisu: "))
      (setq taz_strzalka_opisu_p2 (getpoint taz_strzalka_opisu_p1 "\nWskaz drugi punkt dla strzalki opisu: "))
      (setq taz_strzalka_opisu_tekst (getstring "\nPodaj tekst dla strzalki opisu: "))
      (command "_layer" "_S" "TAZ_TEXT" "")
      (command "_mleader" taz_strzalka_opisu_p1 taz_strzalka_opisu_p2 "" taz_strzalka_opisu_tekst)
      (setq taz_strzalka_opisu_p1 (ssadd))
      (setq taz_strzalka_opisu_p2 (ssadd))
      (setq taz_strzalka_opisu_tekst (ssadd))
      (command "_layer" "_S" taz_aktualna_warstwa "")
    )
  )
  (princ)
)

(defun taz_wymiar_liniowy( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
    (command "_layer" "_S" taz_aktualna_warstwa "")
    (princ)
  )
  (if (equal taz_wspolczynnik_skali nil)
    (print "Najpierw wybierz skale")
    (progn
      (setq taz_aktualna_warstwa (getvar "CLAYER"))
      (command "_layer" "_S" "TAZ_TEXT" "")
      (command "_dimlinear" (getpoint "\nWskaz pierwszy punkt dla wymiaru: ") (getpoint "\nWskaz drugi punkt dla wymiaru: ") (getpoint "\nWskaz miejsce polozenia linii wymiarowej: "))
      (command "_layer" "_S" taz_aktualna_warstwa "")
    )
  )
  (princ)
)

(defun taz_wymiar_wyrownany( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
    (command "_layer" "_S" taz_aktualna_warstwa "")
    (princ)
  )
  (if (equal taz_wspolczynnik_skali nil)
    (print "Najpierw wybierz skale")
    (progn
      (setq taz_aktualna_warstwa (getvar "CLAYER"))
      (command "_layer" "_S" "TAZ_TEXT" "")
      (command "_dimaligned" (getpoint "\nWskaz pierwszy punkt dla wymiaru: ") (getpoint "\nWskaz drugi punkt dla wymiaru: ") (getpoint "\nWskaz miejsce polozenia linii wymiarowej: "))
      (command "_layer" "_S" taz_aktualna_warstwa "")
    )
  )
  (princ)
)

(defun taz_kontynuuj_wymiar( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
    (command "_layer" "_S" taz_aktualna_warstwa "")
    (princ)
  )
  (if (equal taz_wspolczynnik_skali nil)
    (print "Najpierw wybierz skale")
    (progn
      (setq taz_aktualna_warstwa (getvar "CLAYER"))
      (command "_layer" "_S" "TAZ_TEXT" "")
      (setq taz_kontynuuj_wymiar_obiekt (entsel "\nWybierz wymiar do kontynuacji: "))
      (repeat 100
        (setq taz_kontynuuj_wymiar_p1 (getpoint "\nWskaz kolejny punkt dla wymiaru: "))
        (command "_dimcontinue" taz_kontynuuj_wymiar_obiekt taz_kontynuuj_wymiar_p1)
      )
      ;(while (> (getvar 'cmdactive) 0) (command pause))
      ;(command "_layer" "_S" taz_aktualna_warstwa "")
    )
  )
  (princ)
)

(defun taz_przetnij_w_punkcie( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)
    (princ)
  )
  (repeat 100
    (setq taz_przetnij_w_punkcie_obiekt (entsel "\nWskaz obiekt do przeciecia: "))
    (setq taz_przetnij_w_punkcie_p1 (getpoint "\nWskaz punkt przeciecia: "))
    (command "_break" taz_przetnij_w_punkcie_obiekt "_F" taz_przetnij_w_punkcie_p1 taz_przetnij_w_punkcie_p1)
  )
  (princ)
)

(defun taz_przytnij_do_punktu( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)
    (princ)
  )
  (repeat 100
    (setq taz_przytnij_do_punktu_obiekt (entsel "\nWskaz obiekt do przyciecia/wydluzenia: "))
    (setq taz_przytnij_do_punktu_p1 (getpoint "\nWskaz punkt docelowy: "))
    (command "_lengthen" "_DY" taz_przytnij_do_punktu_obiekt taz_przytnij_do_punktu_p1 "")
  )
  (princ)
)

(defun taz_wydluz( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)
    (princ)
  )
  (if (equal taz_wspolczynnik_skali nil)
    (print "Najpierw wybierz skale")
    (progn
      (repeat 100
        (setq taz_wydluz_obiekt (entsel "\nWskaz obiekt do wydluzenia: "))
        (command "_lengthen" "_DE" (* 3 taz_wspolczynnik_skali) taz_wydluz_obiekt "")
      )
    )
  )
  (princ)
)

(defun taz_kreskowanie( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
    (command "_setvar" "HPNAME" taz_aktualny_wzor_kreskowania)
    (princ)
  )
  (setq taz_aktualny_wzor_kreskowania (getvar "HPNAME"))
  (repeat 100
    (command "_setvar" "HPNAME" "SOLID")
    (setq taz_kreskowanie_p1 (getpoint "\nWskaz punkt wewnatrz obszaru do zakreskowania: "))
    (command "_bhatch" taz_kreskowanie_p1 "")
    (command "_setvar" "HPNAME" taz_aktualny_wzor_kreskowania)
  )
  (princ)
)

(defun taz_symbol_przekroju( / *error* )
  (defun *error* ( taz_przyczyna_bledu )
    (command)(command)
    (command "_layer" "_S" taz_aktualna_warstwa "")
    (princ)
  )
  (if (equal taz_wspolczynnik_skali nil)
    (print "Najpierw wybierz skale")
    (progn
      (setq taz_aktualna_warstwa (getvar "CLAYER"))
      (command "_layer" "_S" "TAZ_TEXT" "")
      (setq taz_symbol_przekroju_p1 (getpoint "\nWskaz pierwszy punkt dla prekroju: "))
      (setq taz_symbol_przekroju_p2 (getpoint "\nWskaz drugi punkt dla prekroju: "))
      (setq taz_symbol_przekroju_a1 (* (angle taz_symbol_przekroju_p1 taz_symbol_przekroju_p2) (/ 180 PI)))
      (setq taz_symbol_przekroju_p3 (polar taz_symbol_przekroju_p1 (/ (- taz_symbol_przekroju_a1 90) (/ 180 PI)) (* 10 taz_wspolczynnik_skali)))
      (setq taz_symbol_przekroju_p4 (polar taz_symbol_przekroju_p1 (/ (- taz_symbol_przekroju_a1 90) (/ 180 PI)) (* 4 taz_wspolczynnik_skali)))
      (setq taz_symbol_przekroju_p5 (polar taz_symbol_przekroju_p4 (/ (- taz_symbol_przekroju_a1 180) (/ 180 PI)) (* 3 taz_wspolczynnik_skali)))
      (setq taz_symbol_przekroju_p6 (polar taz_symbol_przekroju_p4 (/ taz_symbol_przekroju_a1 (/ 180 PI)) (* 3 taz_wspolczynnik_skali)))
      (setq taz_symbol_przekroju_p7 (polar taz_symbol_przekroju_p1 (/ (- taz_symbol_przekroju_a1 110) (/ 180 PI)) (* 8 taz_wspolczynnik_skali)))
      (setq taz_symbol_przekroju_p8 (polar taz_symbol_przekroju_p2 (/ (- taz_symbol_przekroju_a1 90) (/ 180 PI)) (* 10 taz_wspolczynnik_skali)))
      (setq taz_symbol_przekroju_p9 (polar taz_symbol_przekroju_p2 (/ (- taz_symbol_przekroju_a1 90) (/ 180 PI)) (* 4 taz_wspolczynnik_skali)))
      (setq taz_symbol_przekroju_p10 (polar taz_symbol_przekroju_p9 (/ (- taz_symbol_przekroju_a1 180) (/ 180 PI)) (* 3 taz_wspolczynnik_skali)))
      (setq taz_symbol_przekroju_p11 (polar taz_symbol_przekroju_p9 (/ taz_symbol_przekroju_a1 (/ 180 PI)) (* 3 taz_wspolczynnik_skali)))
      (setq taz_symbol_przekroju_p12 (polar taz_symbol_przekroju_p2 (/ (- taz_symbol_przekroju_a1 70) (/ 180 PI)) (* 8 taz_wspolczynnik_skali)))
      (setq taz_symbol_przekroju_p13 (getpoint "\nPodaj kierunek: "))
      (setq taz_oznaczenie_przekroju (getstring "\nPodaj oznaczenie dla przekroju: "))
      (setq taz_symbol_przekroju_scalenie (ssadd))
      (command "_ZOOM" "_SCALE" "10000X")
      (command "_pline" taz_symbol_przekroju_p3 taz_symbol_przekroju_p1 taz_symbol_przekroju_p5 taz_symbol_przekroju_p6 "")
      (ssadd (entlast) taz_symbol_przekroju_scalenie)
      (command "_text" "_J" "_M" taz_symbol_przekroju_p7 (* taz_wspolczynnik_skali 2.5) "0" taz_oznaczenie_przekroju)
      (setq taz_oznaczenie_przekroju_txt1 (entlast))
      (ssadd (entlast) taz_symbol_przekroju_scalenie)
      (command "_pline" taz_symbol_przekroju_p8 taz_symbol_przekroju_p2 taz_symbol_przekroju_p11 taz_symbol_przekroju_p10 "")
      (ssadd (entlast) taz_symbol_przekroju_scalenie)
      (command "_text" "_J" "_M" taz_symbol_przekroju_p12 (* taz_wspolczynnik_skali 2.5) "0" taz_oznaczenie_przekroju)
      (setq taz_oznaczenie_przekroju_txt2 (entlast))
      (ssadd (entlast) taz_symbol_przekroju_scalenie)
      (if (< (distance taz_symbol_przekroju_p1 taz_symbol_przekroju_p13) (distance taz_symbol_przekroju_p3 taz_symbol_przekroju_p13))
        (setq taz_symbol_przekroju_scalenie (ssadd))
        (progn
          (command "_mirror" taz_symbol_przekroju_scalenie "" taz_symbol_przekroju_p1 taz_symbol_przekroju_p2 "_Y")
          (setpropertyvalue taz_oznaczenie_przekroju_txt1 "Rotation" 0)
          (setpropertyvalue taz_oznaczenie_przekroju_txt2 "Rotation" 0)
        )
      )
      (command "_ZOOM" "_SCALE" "0.0001X")
      (setq taz_symbol_przekroju_scalenie (ssadd))
      (command "_layer" "_S" taz_aktualna_warstwa "")
    )
  )
  (princ)
)