taz_polaczenie_zakladkowe_przekroj_okno : dialog {
  label = "TAZ POLACZENIE ZAKLADKOWE PRZEKROJ";
  : row {
    alignment = centered;
    fixed_height = true;
    fixed_width = true;
    : text {
      key = "taz_polaczenie_zakladkowe_przekroj_txt1";
      label = "Typ sruby: ";
      }
    : popup_list {
        key = "taz_polaczenie_zakladkowe_rodzaj_sruby_dcl";
        label = "";
        edit_width = 10;
        is_tab_stop = false;
        list = "M8\nM10\nM12\nM16\nM20\nM24\nM30";
        action = "(taz_polaczenie_zakladkowe_parametry)";
        }
    : spacer {
        height= 3;
        }
        }
  : row {
    alignment = centered;
    fixed_height = true;
    fixed_width = true;
    : edit_box {
      key = "taz_polaczenie_zakladkowe_parametr_e_dcl";
      label = "";
      edit_width = 1;
      }
    : edit_box {
      key = "taz_polaczenie_zakladkowe_parametr_p_dcl";
      label = "";
      edit_width = 1;
      }
    : spacer {
      width = 15;
      }
      }
  : row {
    alignment = centered;
    fixed_height = true;
    fixed_width = true;
    : image {
      height = 5.36;
      width = 33.26;
      key = "taz_polaczenie_zakladkowe_przekroj_schemat_key";
      //color = 0;
      is_enabled = false;
      is_tab_stop = false;
      }
    : edit_box {
      key = "taz_polaczenie_zakladkowe_grubosc_blachy_dcl";
      label = "";
      alignment = centered;
      edit_width = 1;
      }
      }
  : row {
    alignment = centered;
    fixed_height = true;
    fixed_width = true;
    : edit_box {
      key = "taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie_dcl";
      label = "";
      alignment = centered;
      edit_width = 1;
      action = "(taz_polaczenie_zakladkowe_przekroj_korekta_rozstawu)";
      }
    : text {
      key = "taz_polaczenie_zakladkowe_przekroj_txt2";
      label = "nx";
      }
    : spacer {
      width = 5;
      }
      }
  : spacer {
    height= 1;
    }
  : row {
    alignment = centered;
    fixed_height = true;
    fixed_width = true;
    : button {
      key = "accept";
      label = "OK";
      width = 12;
      is_default = true;
      }
    : button {
      key = "cancel";
      label = "Anuluj";
      width = 12;
      is_default = false;
      is_cancel = true;
      }
      }
}