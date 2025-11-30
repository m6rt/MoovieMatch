import 'package:flutter/material.dart';

void throwError(BuildContext context, String txt) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(const SnackBar(content: Text(txt)));
}
