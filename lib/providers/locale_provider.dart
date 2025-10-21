import 'package:flutter/material.dart';

class LocaleProvider extends ChangeNotifier {
  Locale current = const Locale("en");
  void setTurkish() {
    current = const Locale("tr");
    notifyListeners();
  }

  void setEnglish() {
    current = const Locale("en");
    notifyListeners();
  }
}
