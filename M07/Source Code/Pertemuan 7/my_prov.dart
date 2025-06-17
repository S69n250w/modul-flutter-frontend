import 'package:flutter/material.dart';

class MyDataList extends ChangeNotifier {
  int _countNotif = 0;
  int _currentIdx = 0;
  int get countNotif => _countNotif;
  addcountNotif() {
    _countNotif = _countNotif + 1;
    notifyListeners();
  }

  restartNotif() {
    _countNotif = 0;
    notifyListeners();
  }

  int get currentIdx => _currentIdx;
  set currentIdx(value) {
    _currentIdx = value;
    notifyListeners();
  }

  List<String> _namaTamu = [];
  List<String> get namaTamu => _namaTamu.toList();
  addNamaTamu(String nama) {
    _namaTamu.add(nama);
    notifyListeners();
  }

  clearName() {
    _namaTamu.clear();
    notifyListeners();
  }
}
