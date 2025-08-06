import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String getformatedDate(DateTime dt, {String pattern = 'dd/MM/yyyy'}) {
  return DateFormat(pattern).format(dt);
}

void Snackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
