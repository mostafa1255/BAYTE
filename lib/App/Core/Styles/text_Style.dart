import 'package:flutter/material.dart';

class Txtstyle {
  static TextStyle style30({required BuildContext context}) {
    return TextStyle(
      fontFamily: "Metrophobic",
      fontSize: MediaQuery.of(context).size.width * 0.072,
    );
  }

  static TextStyle style25({required BuildContext context}) {
    return TextStyle(
        fontFamily: "Metrophobic",
        fontSize: MediaQuery.of(context).size.width * 0.062,
        fontWeight: FontWeight.bold);
  }

  static TextStyle style25s({required BuildContext context}) {
    return TextStyle(
        fontFamily: "Metrophobic",
        color: const Color(0xff4A4B4D),
        fontSize: MediaQuery.of(context).size.width * 0.062,
        fontWeight: FontWeight.normal);
  }

  static TextStyle style22({required BuildContext context}) {
    return TextStyle(
        fontFamily: "Metrophobic",
        fontSize: MediaQuery.of(context).size.width * 0.05,
        fontWeight: FontWeight.bold);
  }

  static TextStyle style17({required BuildContext context}) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.045,
      fontFamily: "Metrophobic",
    );
  }

  static TextStyle style14({required BuildContext context}) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.038,
      fontFamily: "Metrophobic",
    );
  }

  static TextStyle style12({required BuildContext context}) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.035,
      fontFamily: "Metrophobic",
    );
  }

  static TextStyle style8({required BuildContext context}) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.03,
      fontFamily: "Metrophobic",
    );
  }
}
