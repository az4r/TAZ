(defun c:taz_polacz_polilinie ( / taz_aktualny_tryb_podpowiedzi_konwersji_polilinii taz_polacz_polilinie_selekcja )
  (setq taz_aktualny_tryb_podpowiedzi_konwersji_polilinii (getvar 'PEDITACCEPT))
  (setvar 'PEDITACCEPT 1)
  (if (and (setq taz_polacz_polilinie_selekcja (ssget "_:L" '((0 . "ARC,LINE,LWPOLYLINE")))) (setq taz_polacz_polilinie_dlugosc_polaczenia (getdist "\nPodaj dlugosc polaczenia <0>: ")))
    ;(command "_.pedit" "_M" taz_polacz_polilinie_selekcja "" "_J" "Jointype" "_A" taz_polacz_polilinie_dlugosc_polaczenia "")
    (command "_.pedit" "_M" taz_polacz_polilinie_selekcja "" "_J" "T" "O" taz_polacz_polilinie_dlugosc_polaczenia "")
    (princ)
  )
  (setvar 'PEDITACCEPT taz_aktualny_tryb_podpowiedzi_konwersji_polilinii)
)