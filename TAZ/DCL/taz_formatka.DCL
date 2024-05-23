taz_formatka_okno : dialog {
  label = "TAZ FORMATKA";
  : popup_list {
    key = "taz_formatka_papier_dcl";
    label = "Formatka";
    alignment = center;
    width = 20;
    edit_width = 20;
    height = 2;
    is_tab_stop = false;
    list = "A4\nA3\nA2\nA1\nA0";
  }
    : popup_list {
    key = "taz_formatka_orientacja_dcl";
    label = "Orientacja";
    alignment = center;
    width = 20;
    edit_width = 20;
    height = 2;
    is_tab_stop = false;
    list = "Poziomo\nPionowo";
  }
  spacer;
  : row {
  fixed_width = true;
  alignment = centered;
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