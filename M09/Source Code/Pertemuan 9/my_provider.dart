import 'package:flutter/material.dart';

class MyData extends ChangeNotifier {
  int? _genap;
  int? _ganjil;

  int? get genap => _genap;
  int? get ganjil => _ganjil;

  set genap(value) {
    _genap = value * 2;
    notifyListeners();
  }

  set ganjil(value) {
    _ganjil = value * 2 + 1;
    notifyListeners();
  }
}
