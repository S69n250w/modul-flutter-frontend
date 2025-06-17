import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  List<String> _Eng = [
    "Setting",
    "Basic",
    "Search engine",
    "Pop up if high priority",
    "Start Time",
    "Advance",
    "Language",
    "Encryption",
    "Exit"
  ];
  List<String> _Ind = [
    "Pengaturan",
    "Dasar",
    "Mesin pencari",
    "Muncul jika prioritas tinggi",
    "Waktu mulai",
    "Maju",
    "Bahasa",
    "Enkripsi",
    "Keluar"
  ];

  List<String> _UseLanguage = [];
  List<String> get UseLanguage {
    if (_UseLanguage.isEmpty) {
      _UseLanguage = _Eng;
    }
    return _UseLanguage;
  }

  set _setLanguage(value) {}

  ubahBahasa(value) {
    if (value == "English")
      _UseLanguage = _Eng;
    else
      _UseLanguage = _Ind;
    notifyListeners();
  }

  bool _PopUp = true;
  set PopUp(value) {
    _PopUp = value;
    notifyListeners();
  }

  bool get PopUp => _PopUp;

  List<String> _listOfLanguage = ["English", "Indonesia"];
  String _language = "English";

  List<String> get listOfLanguange => _listOfLanguage.toList();

  String get language => _language;
  set language(value) {
    _language = value;
    notifyListeners();
  }
}
