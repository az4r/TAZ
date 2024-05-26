taz_polaczenie_zakladkowe_widok_okno : dialog {
  label = "TAZ POLACZENIE ZAKLADKOWE WIDOK";
  : row {
  alignment = centered;
  fixed_height = true;
  fixed_width = true;
  : text {
    key = "taz_polaczenie_zakladkowe_widok_txt1";
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
  : spacer {
    width = 4;
  }
  : edit_box {
    key = "taz_polaczenie_parametr_s_dcl";
    label = "";
    value = "12";
    edit_width = 1;
  }
  : edit_box {
    key = "taz_polaczenie_parametr_p_dcl";
    label = "";
    value = "21";
    edit_width = 1;
  }
  : edit_box {
    key = "taz_polaczenie_parametr_e_dcl";
    label = "";
    value = "11";
    edit_width = 1;
  }
  }
  : row {
  alignment = centered;
  fixed_height = true;
  fixed_width = true;
  : image {
  height = 15.36;
  width = 33.26;
  key = "taz_polaczenie_zakladkowe_widok_schemat_key";
  //color = 0;
  is_enabled = false;
  is_tab_stop = false;
  }
  : edit_box {
    key = "taz_polaczenie_zakladkowe_ilosc_srub_w_pionie_dcl";
    label = "";
    alignment = centered;
    value = "2";
    edit_width = 1;
  }
  : text {
    key = "taz_polaczenie_zakladkowe_widok_txt2";
	label = "ny";
  }
  }
  : row {
  alignment = centered;
  fixed_height = true;
  fixed_width = true;
  : spacer {
    width = 8;
  }
  : edit_box {
    key = "taz_polaczenie_zakladkowe_ilosc_srub_w_poziomie_dcl";
    label = "";
    alignment = centered;
    value = "2";
    edit_width = 1;
  }
  : text {
    key = "taz_polaczenie_zakladkowe_widok_txt3";
	label = "nx";
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