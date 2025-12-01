import 'package:flutter/material.dart';

void throwError(BuildContext context, String txt) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(txt), duration: Duration(seconds: 2)));
}
