import 'package:flutter/material.dart';

class Txtstyle {
  static TextStyle style25({required BuildContext context}) {
    return TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.062,
        fontWeight: FontWeight.bold);
  }

  static TextStyle style22({required BuildContext context}) {
    return TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.05,
        fontWeight: FontWeight.bold);
  }

  static TextStyle style17({required BuildContext context}) {
    return TextStyle(fontSize: MediaQuery.of(context).size.width * 0.045);
  }

  static TextStyle style12({required BuildContext context}) {
    return TextStyle(fontSize: MediaQuery.of(context).size.width * 0.035);
  }

  static TextStyle style8({required BuildContext context}) {
    return TextStyle(fontSize: MediaQuery.of(context).size.width * 0.03);
  }
}
