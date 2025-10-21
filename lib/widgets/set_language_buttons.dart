import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mooviematch/providers/locale_provider.dart';

Widget setTurkishLanguageButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Provider.of<LocaleProvider>(context, listen: false).setTurkish();
      print("Turkish selected");
    },
    child: Image(height: 40, image: AssetImage("assets/images/trBayrak.png")),
  );
}

Widget setEnglishButton(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Provider.of<LocaleProvider>(context, listen: false).setEnglish();
      print("English selected");
    },
    child: Image(height: 40, image: AssetImage("assets/images/ukBayrak.png")),
  );
}
