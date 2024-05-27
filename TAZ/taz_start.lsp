(defun taz_zmienne_wejsciowe()
  (setq taz_kota_gora_aktualny_poziom "0.000")
  (setq taz_polaczenie_zakladkowe_rodzaj_sruby "0")
  (setq taz_polaczenie_zakladkowe_parametr_s "12")
  (setq taz_polaczenie_zakladkowe_parametr_p "21")
  (setq taz_polaczenie_zakladkowe_parametr_e "11")
  (setq taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie "2")
  (setq taz_polaczenie_zakladkowe_ilosc_srub_w_pionie "2")
  (setq taz_polaczenie_zakladkowe_grubosc_blachy "10")
  (princ)
)

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

(defun taz_wczytaj_style_tekstu()
  (setq taz_aktualny_styl_tekstu (getvar "TEXTSTYLE"))
  (if (tblsearch "STYLE" "TAZ_TS")
    (princ)
    (progn
      (command "-style" "TAZ_TS" "Arial" "0" "1" "0" "_N" "_N")
    )
  )
  (command "_setvar" "TEXTSTYLE" taz_aktualny_styl_tekstu)
  (princ)
)

(defun taz_wczytaj_style_wymiarow()
  (setq taz_aktualny_styl_wymiarow (getvar "DIMSTYLE"))
  (if (tblsearch "DIMSTYLE" "TAZ_DS_1")
    (princ)
    (progn
      (command "-dimstyle" "_AN" "_N" "TAZ_DS_1" "")
      (command "_setvar" "DIMDLE" "1")
      (command "_setvar" "DIMDLI" "0")
      (command "_setvar" "DIMEXE" "1")
      (command "_setvar" "DIMEXO" "2")
      (command "_setvar" "DIMFXL" "20")
      (command "_setvar" "DIMBLK" "Oblique")
      (command "_setvar" "DIMASZ" "2")
      (command "_setvar" "DIMCEN" "0")
      (command "_setvar" "DIMARCSYM" "1")
      (command "_setvar" "DIMTXSTY" "TAZ_TS")
      (command "_setvar" "DIMTXT" "2")
      (command "_setvar" "DIMTFAC" (/ (float 1) 30))
      (command "_setvar" "DIMTAD" "0")
      (command "_setvar" "DIMGAP" "0")
      (command "_setvar" "DIMTMOVE" "1")
      (command "_setvar" "DIMDEC" "1")
      (command "_setvar" "DIMDSEP" ".")
      (command "_setvar" "DIMRND" "1")
      (command "_setvar" "DIMZIN" "9")
      (command "_setvar" "DIMALTD" "2")
      (command "_setvar" "DIMALTF" "25.4")
      (command "_setvar" "DIMTOLJ" "1")
      (command "_setvar" "DIMTDEC" "1")
      (command "_setvar" "DIMTVP" "0.8")
      (command "_setvar" "DIMCLRD" "256")
      (command "_setvar" "DIMCLRE" "256")
      (command "_setvar" "DIMCLRT" "256")
      (command "_setvar" "DIMTFILLCLR" "256")
      (command "_setvar" "DIMSCALE" "1")
      (command "-dimstyle" "_S" "TAZ_DS_1" "_Y")
    )
  )
  (if (tblsearch "DIMSTYLE" "TAZ_DS_5")
    (princ)
    (progn
      (command "-dimstyle" "_AN" "_N" "TAZ_DS_5" "")
      (command "_setvar" "DIMDLE" "1")
      (command "_setvar" "DIMDLI" "0")
      (command "_setvar" "DIMEXE" "1")
      (command "_setvar" "DIMEXO" "2")
      (command "_setvar" "DIMFXL" "20")
      (command "_setvar" "DIMBLK" "Oblique")
      (command "_setvar" "DIMASZ" "2")
      (command "_setvar" "DIMCEN" "0")
      (command "_setvar" "DIMARCSYM" "1")
      (command "_setvar" "DIMTXSTY" "TAZ_TS")
      (command "_setvar" "DIMTXT" "2")
      (command "_setvar" "DIMTFAC" (/ (float 1) 30))
      (command "_setvar" "DIMTAD" "0")
      (command "_setvar" "DIMGAP" "0")
      (command "_setvar" "DIMTMOVE" "1")
      (command "_setvar" "DIMDEC" "1")
      (command "_setvar" "DIMDSEP" ".")
      (command "_setvar" "DIMRND" "1")
      (command "_setvar" "DIMZIN" "9")
      (command "_setvar" "DIMALTD" "2")
      (command "_setvar" "DIMALTF" "25.4")
      (command "_setvar" "DIMTOLJ" "1")
      (command "_setvar" "DIMTDEC" "1")
      (command "_setvar" "DIMTVP" "0.8")
      (command "_setvar" "DIMCLRD" "256")
      (command "_setvar" "DIMCLRE" "256")
      (command "_setvar" "DIMCLRT" "256")
      (command "_setvar" "DIMTFILLCLR" "256")
      (command "_setvar" "DIMSCALE" "5")
      (command "-dimstyle" "_S" "TAZ_DS_5" "_Y")
    )
  )
  (if (tblsearch "DIMSTYLE" "TAZ_DS_10")
    (princ)
    (progn
      (command "-dimstyle" "_AN" "_N" "TAZ_DS_10" "")
      (command "_setvar" "DIMDLE" "1")
      (command "_setvar" "DIMDLI" "0")
      (command "_setvar" "DIMEXE" "1")
      (command "_setvar" "DIMEXO" "2")
      (command "_setvar" "DIMFXL" "20")
      (command "_setvar" "DIMBLK" "Oblique")
      (command "_setvar" "DIMASZ" "2")
      (command "_setvar" "DIMCEN" "0")
      (command "_setvar" "DIMARCSYM" "1")
      (command "_setvar" "DIMTXSTY" "TAZ_TS")
      (command "_setvar" "DIMTXT" "2")
      (command "_setvar" "DIMTFAC" (/ (float 1) 30))
      (command "_setvar" "DIMTAD" "0")
      (command "_setvar" "DIMGAP" "0")
      (command "_setvar" "DIMTMOVE" "1")
      (command "_setvar" "DIMDEC" "1")
      (command "_setvar" "DIMDSEP" ".")
      (command "_setvar" "DIMRND" "1")
      (command "_setvar" "DIMZIN" "9")
      (command "_setvar" "DIMALTD" "2")
      (command "_setvar" "DIMALTF" "25.4")
      (command "_setvar" "DIMTOLJ" "1")
      (command "_setvar" "DIMTDEC" "1")
      (command "_setvar" "DIMTVP" "0.8")
      (command "_setvar" "DIMCLRD" "256")
      (command "_setvar" "DIMCLRE" "256")
      (command "_setvar" "DIMCLRT" "256")
      (command "_setvar" "DIMTFILLCLR" "256")
      (command "_setvar" "DIMSCALE" "10")
      (command "-dimstyle" "_S" "TAZ_DS_10" "_Y")
    )
  )
  (if (tblsearch "DIMSTYLE" "TAZ_DS_20")
    (princ)
    (progn
      (command "-dimstyle" "_AN" "_N" "TAZ_DS_20" "")
      (command "_setvar" "DIMDLE" "1")
      (command "_setvar" "DIMDLI" "0")
      (command "_setvar" "DIMEXE" "1")
      (command "_setvar" "DIMEXO" "2")
      (command "_setvar" "DIMFXL" "20")
      (command "_setvar" "DIMBLK" "Oblique")
      (command "_setvar" "DIMASZ" "2")
      (command "_setvar" "DIMCEN" "0")
      (command "_setvar" "DIMARCSYM" "1")
      (command "_setvar" "DIMTXSTY" "TAZ_TS")
      (command "_setvar" "DIMTXT" "2")
      (command "_setvar" "DIMTFAC" (/ (float 1) 30))
      (command "_setvar" "DIMTAD" "0")
      (command "_setvar" "DIMGAP" "0")
      (command "_setvar" "DIMTMOVE" "1")
      (command "_setvar" "DIMDEC" "1")
      (command "_setvar" "DIMDSEP" ".")
      (command "_setvar" "DIMRND" "1")
      (command "_setvar" "DIMZIN" "9")
      (command "_setvar" "DIMALTD" "2")
      (command "_setvar" "DIMALTF" "25.4")
      (command "_setvar" "DIMTOLJ" "1")
      (command "_setvar" "DIMTDEC" "1")
      (command "_setvar" "DIMTVP" "0.8")
      (command "_setvar" "DIMCLRD" "256")
      (command "_setvar" "DIMCLRE" "256")
      (command "_setvar" "DIMCLRT" "256")
      (command "_setvar" "DIMTFILLCLR" "256")
      (command "_setvar" "DIMSCALE" "20")
      (command "-dimstyle" "_S" "TAZ_DS_20" "_Y")
    )
  )
  (if (tblsearch "DIMSTYLE" "TAZ_DS_50")
    (princ)
    (progn
      (command "-dimstyle" "_AN" "_N" "TAZ_DS_50" "")
      (command "_setvar" "DIMDLE" "1")
      (command "_setvar" "DIMDLI" "0")
      (command "_setvar" "DIMEXE" "1")
      (command "_setvar" "DIMEXO" "2")
      (command "_setvar" "DIMFXL" "20")
      (command "_setvar" "DIMBLK" "Oblique")
      (command "_setvar" "DIMASZ" "2")
      (command "_setvar" "DIMCEN" "0")
      (command "_setvar" "DIMARCSYM" "1")
      (command "_setvar" "DIMTXSTY" "TAZ_TS")
      (command "_setvar" "DIMTXT" "2")
      (command "_setvar" "DIMTFAC" (/ (float 1) 30))
      (command "_setvar" "DIMTAD" "0")
      (command "_setvar" "DIMGAP" "0")
      (command "_setvar" "DIMTMOVE" "1")
      (command "_setvar" "DIMDEC" "1")
      (command "_setvar" "DIMDSEP" ".")
      (command "_setvar" "DIMRND" "1")
      (command "_setvar" "DIMZIN" "9")
      (command "_setvar" "DIMALTD" "2")
      (command "_setvar" "DIMALTF" "25.4")
      (command "_setvar" "DIMTOLJ" "1")
      (command "_setvar" "DIMTDEC" "1")
      (command "_setvar" "DIMTVP" "0.8")
      (command "_setvar" "DIMCLRD" "256")
      (command "_setvar" "DIMCLRE" "256")
      (command "_setvar" "DIMCLRT" "256")
      (command "_setvar" "DIMTFILLCLR" "256")
      (command "_setvar" "DIMSCALE" "50")
      (command "-dimstyle" "_S" "TAZ_DS_50" "_Y")
    )
  )
  (if (tblsearch "DIMSTYLE" "TAZ_DS_100")
    (princ)
    (progn
      (command "-dimstyle" "_AN" "_N" "TAZ_DS_100" "")
      (command "_setvar" "DIMDLE" "1")
      (command "_setvar" "DIMDLI" "0")
      (command "_setvar" "DIMEXE" "1")
      (command "_setvar" "DIMEXO" "2")
      (command "_setvar" "DIMFXL" "20")
      (command "_setvar" "DIMBLK" "Oblique")
      (command "_setvar" "DIMASZ" "2")
      (command "_setvar" "DIMCEN" "0")
      (command "_setvar" "DIMARCSYM" "1")
      (command "_setvar" "DIMTXSTY" "TAZ_TS")
      (command "_setvar" "DIMTXT" "2")
      (command "_setvar" "DIMTFAC" (/ (float 1) 30))
      (command "_setvar" "DIMTAD" "0")
      (command "_setvar" "DIMGAP" "0")
      (command "_setvar" "DIMTMOVE" "1")
      (command "_setvar" "DIMDEC" "1")
      (command "_setvar" "DIMDSEP" ".")
      (command "_setvar" "DIMRND" "1")
      (command "_setvar" "DIMZIN" "9")
      (command "_setvar" "DIMALTD" "2")
      (command "_setvar" "DIMALTF" "25.4")
      (command "_setvar" "DIMTOLJ" "1")
      (command "_setvar" "DIMTDEC" "1")
      (command "_setvar" "DIMTVP" "0.8")
      (command "_setvar" "DIMCLRD" "256")
      (command "_setvar" "DIMCLRE" "256")
      (command "_setvar" "DIMCLRT" "256")
      (command "_setvar" "DIMTFILLCLR" "256")
      (command "_setvar" "DIMSCALE" "100")
      (command "-dimstyle" "_S" "TAZ_DS_100" "_Y")
    )
  )
  (if (tblsearch "DIMSTYLE" "TAZ_DS_200")
    (princ)
    (progn
      (command "-dimstyle" "_AN" "_N" "TAZ_DS_200" "")
      (command "_setvar" "DIMDLE" "1")
      (command "_setvar" "DIMDLI" "0")
      (command "_setvar" "DIMEXE" "1")
      (command "_setvar" "DIMEXO" "2")
      (command "_setvar" "DIMFXL" "20")
      (command "_setvar" "DIMBLK" "Oblique")
      (command "_setvar" "DIMASZ" "2")
      (command "_setvar" "DIMCEN" "0")
      (command "_setvar" "DIMARCSYM" "1")
      (command "_setvar" "DIMTXSTY" "TAZ_TS")
      (command "_setvar" "DIMTXT" "2")
      (command "_setvar" "DIMTFAC" (/ (float 1) 30))
      (command "_setvar" "DIMTAD" "0")
      (command "_setvar" "DIMGAP" "0")
      (command "_setvar" "DIMTMOVE" "1")
      (command "_setvar" "DIMDEC" "1")
      (command "_setvar" "DIMDSEP" ".")
      (command "_setvar" "DIMRND" "1")
      (command "_setvar" "DIMZIN" "9")
      (command "_setvar" "DIMALTD" "2")
      (command "_setvar" "DIMALTF" "25.4")
      (command "_setvar" "DIMTOLJ" "1")
      (command "_setvar" "DIMTDEC" "1")
      (command "_setvar" "DIMTVP" "0.8")
      (command "_setvar" "DIMCLRD" "256")
      (command "_setvar" "DIMCLRE" "256")
      (command "_setvar" "DIMCLRT" "256")
      (command "_setvar" "DIMTFILLCLR" "256")
      (command "_setvar" "DIMSCALE" "200")
      (command "-dimstyle" "_S" "TAZ_DS_200" "_Y")
    )
  )
  (command "-dimstyle" "_R" taz_aktualny_styl_wymiarow)
  (princ)
)

(defun taz_wczytaj_style_wielolinii_odniesienia()
  (setq taz_aktualny_styl_wielolinii_odniesienia (getvar "CMLEADERSTYLE"))
  (if (dictsearch (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE"))) "TAZ_MLS_1")
    (princ)
    (progn
      (setq taz_baza_styli_wielolinii_odniesienia (vlax-ename->vla-object (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE")))))
      (setq taz_vtaz_mls_1 (vlax-invoke-method taz_baza_styli_wielolinii_odniesienia 'AddObject "TAZ_MLS_1" "AcDbMLeaderStyle"))
      (vlax-put-property taz_vtaz_mls_1 'ArrowSize 2)
      (vlax-put-property taz_vtaz_mls_1 'BreakSize 2)
      (vlax-put-property taz_vtaz_mls_1 'MaxLeaderSegmentsPoints 0)
      (vlax-put-property taz_vtaz_mls_1 'TextStyle "TAZ_TS")
      (vlax-put-property taz_vtaz_mls_1 'TextAngleType 1)
      (vlax-put-property taz_vtaz_mls_1 'TextHeight 2)
      (vlax-put-property taz_vtaz_mls_1 'TextLeftAttachmentType 3)
      (vlax-put-property taz_vtaz_mls_1 'LandingGap 0.5)
      (vlax-put-property taz_vtaz_mls_1 'ScaleFactor 1)
    )
  )
  (if (dictsearch (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE"))) "TAZ_MLS_5")
    (princ)
    (progn
      (setq taz_baza_styli_wielolinii_odniesienia (vlax-ename->vla-object (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE")))))
      (setq taz_vtaz_mls_5 (vlax-invoke-method taz_baza_styli_wielolinii_odniesienia 'AddObject "TAZ_MLS_5" "AcDbMLeaderStyle"))
      (vlax-put-property taz_vtaz_mls_5 'ArrowSize 2)
      (vlax-put-property taz_vtaz_mls_5 'BreakSize 2)
      (vlax-put-property taz_vtaz_mls_5 'MaxLeaderSegmentsPoints 0)
      (vlax-put-property taz_vtaz_mls_5 'TextStyle "TAZ_TS")
      (vlax-put-property taz_vtaz_mls_5 'TextAngleType 1)
      (vlax-put-property taz_vtaz_mls_5 'TextHeight 2)
      (vlax-put-property taz_vtaz_mls_5 'TextLeftAttachmentType 3)
      (vlax-put-property taz_vtaz_mls_5 'LandingGap 0.5)
      (vlax-put-property taz_vtaz_mls_5 'ScaleFactor 5)
    )
  )
  (if (dictsearch (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE"))) "TAZ_MLS_10")
    (princ)
    (progn
      (setq taz_baza_styli_wielolinii_odniesienia (vlax-ename->vla-object (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE")))))
      (setq taz_vtaz_mls_10 (vlax-invoke-method taz_baza_styli_wielolinii_odniesienia 'AddObject "TAZ_MLS_10" "AcDbMLeaderStyle"))
      (vlax-put-property taz_vtaz_mls_10 'ArrowSize 2)
      (vlax-put-property taz_vtaz_mls_10 'BreakSize 2)
      (vlax-put-property taz_vtaz_mls_10 'MaxLeaderSegmentsPoints 0)
      (vlax-put-property taz_vtaz_mls_10 'TextStyle "TAZ_TS")
      (vlax-put-property taz_vtaz_mls_10 'TextAngleType 1)
      (vlax-put-property taz_vtaz_mls_10 'TextHeight 2)
      (vlax-put-property taz_vtaz_mls_10 'TextLeftAttachmentType 3)
      (vlax-put-property taz_vtaz_mls_10 'LandingGap 0.5)
      (vlax-put-property taz_vtaz_mls_10 'ScaleFactor 10)
    )
  )
  (if (dictsearch (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE"))) "TAZ_MLS_20")
    (princ)
    (progn
      (setq taz_baza_styli_wielolinii_odniesienia (vlax-ename->vla-object (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE")))))
      (setq taz_vtaz_mls_20 (vlax-invoke-method taz_baza_styli_wielolinii_odniesienia 'AddObject "TAZ_MLS_20" "AcDbMLeaderStyle"))
      (vlax-put-property taz_vtaz_mls_20 'ArrowSize 2)
      (vlax-put-property taz_vtaz_mls_20 'BreakSize 2)
      (vlax-put-property taz_vtaz_mls_20 'MaxLeaderSegmentsPoints 0)
      (vlax-put-property taz_vtaz_mls_20 'TextStyle "TAZ_TS")
      (vlax-put-property taz_vtaz_mls_20 'TextAngleType 1)
      (vlax-put-property taz_vtaz_mls_20 'TextHeight 2)
      (vlax-put-property taz_vtaz_mls_20 'TextLeftAttachmentType 3)
      (vlax-put-property taz_vtaz_mls_20 'LandingGap 0.5)
      (vlax-put-property taz_vtaz_mls_20 'ScaleFactor 20)
    )
  )
  (if (dictsearch (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE"))) "TAZ_MLS_50")
    (princ)
    (progn
      (setq taz_baza_styli_wielolinii_odniesienia (vlax-ename->vla-object (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE")))))
      (setq taz_vtaz_mls_50 (vlax-invoke-method taz_baza_styli_wielolinii_odniesienia 'AddObject "TAZ_MLS_50" "AcDbMLeaderStyle"))
      (vlax-put-property taz_vtaz_mls_50 'ArrowSize 2)
      (vlax-put-property taz_vtaz_mls_50 'BreakSize 2)
      (vlax-put-property taz_vtaz_mls_50 'MaxLeaderSegmentsPoints 0)
      (vlax-put-property taz_vtaz_mls_50 'TextStyle "TAZ_TS")
      (vlax-put-property taz_vtaz_mls_50 'TextAngleType 1)
      (vlax-put-property taz_vtaz_mls_50 'TextHeight 2)
      (vlax-put-property taz_vtaz_mls_50 'TextLeftAttachmentType 3)
      (vlax-put-property taz_vtaz_mls_50 'LandingGap 0.5)
      (vlax-put-property taz_vtaz_mls_50 'ScaleFactor 50)
    )
  )
  (if (dictsearch (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE"))) "TAZ_MLS_100")
    (princ)
    (progn
      (setq taz_baza_styli_wielolinii_odniesienia (vlax-ename->vla-object (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE")))))
      (setq taz_vtaz_mls_100 (vlax-invoke-method taz_baza_styli_wielolinii_odniesienia 'AddObject "TAZ_MLS_100" "AcDbMLeaderStyle"))
      (vlax-put-property taz_vtaz_mls_100 'ArrowSize 2)
      (vlax-put-property taz_vtaz_mls_100 'BreakSize 2)
      (vlax-put-property taz_vtaz_mls_100 'MaxLeaderSegmentsPoints 0)
      (vlax-put-property taz_vtaz_mls_100 'TextStyle "TAZ_TS")
      (vlax-put-property taz_vtaz_mls_100 'TextAngleType 1)
      (vlax-put-property taz_vtaz_mls_100 'TextHeight 2)
      (vlax-put-property taz_vtaz_mls_100 'TextLeftAttachmentType 3)
      (vlax-put-property taz_vtaz_mls_100 'LandingGap 0.5)
      (vlax-put-property taz_vtaz_mls_100 'ScaleFactor 100)
    )
  )
  (if (dictsearch (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE"))) "TAZ_MLS_200")
    (princ)
    (progn
      (setq taz_baza_styli_wielolinii_odniesienia (vlax-ename->vla-object (cdr (assoc -1 (dictSearch (namedObjDict) "ACAD_MLEADERSTYLE")))))
      (setq taz_vtaz_mls_200 (vlax-invoke-method taz_baza_styli_wielolinii_odniesienia 'AddObject "TAZ_MLS_200" "AcDbMLeaderStyle"))
      (vlax-put-property taz_vtaz_mls_200 'ArrowSize 2)
      (vlax-put-property taz_vtaz_mls_200 'BreakSize 2)
      (vlax-put-property taz_vtaz_mls_200 'MaxLeaderSegmentsPoints 0)
      (vlax-put-property taz_vtaz_mls_200 'TextStyle "TAZ_TS")
      (vlax-put-property taz_vtaz_mls_200 'TextAngleType 1)
      (vlax-put-property taz_vtaz_mls_200 'TextHeight 2)
      (vlax-put-property taz_vtaz_mls_200 'TextLeftAttachmentType 3)
      (vlax-put-property taz_vtaz_mls_200 'LandingGap 0.5)
      (vlax-put-property taz_vtaz_mls_200 'ScaleFactor 200)
    )
  )
  (command "_setvar" "CMLEADERSTYLE" taz_aktualny_styl_wielolinii_odniesienia)
)

(defun taz_lista ( taz_lista_string / taz_lista_pozycja )
  (if (setq taz_lista_pozycja (vl-string-position 32 taz_lista_string))
    (cons (substr taz_lista_string 1 taz_lista_pozycja) (taz_lista (substr taz_lista_string (+ taz_lista_pozycja 2))))
    (list taz_lista_string)
  )
)

(defun taz_wyjscie_z_funkcji()
  (if (equal taz_wyjscie_z_funkcji_status "1")
    (progn 
      (setq taz_wyjscie_z_funkcji_status "0")
      (*error*)
    )
    (princ)
  )
)

;#######################################################################################################################

(defun taz_start()
  (taz_zmienne_wejsciowe)
  (taz_wczytaj_warstwy)
  (taz_wczytaj_style_tekstu)
  (taz_wczytaj_style_wymiarow)
  (taz_wczytaj_style_wielolinii_odniesienia)
  (load "C:\\TAZ\\taz_ogolny.lsp")
  (load "C:\\TAZ\\taz_stal.lsp")
  (princ)
)

(taz_start)
(princ "\n#########################################")
(princ "\n########## TOOLBAR AZ WLACZONY ##########")
(princ "\n#########################################")
(princ)