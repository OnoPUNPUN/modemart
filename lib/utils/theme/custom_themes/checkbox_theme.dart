import 'package:flutter/material.dart';

class AppCheckboxTheme {
  AppCheckboxTheme._(); // To avoid creating instances

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith(((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    })),
    fillColor: WidgetStateProperty.resolveWith(((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    })),
  ); // CheckboxThemeData

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith(((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    })),
    fillColor: WidgetStateProperty.resolveWith(((states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    })),
  ); // CheckboxThemeData
}
