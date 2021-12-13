import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';

class ErrorHandler {
  static Unit errorSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(
      snackBar,
    );
    return unit;
  }
}
