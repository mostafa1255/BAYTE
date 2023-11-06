import 'package:bayte/App/Presentation/Views/Screens/Auth_Screens/Auth_Home_Screen/Auth_Home_Screen.dart';
import 'package:bayte/App/Presentation/Views/Screens/Auth_Screens/Login_Screen/Login_Screen.dart';
import 'package:bayte/App/Presentation/Views/Screens/Splash_View.dart/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'App/Presentation/Views/Screens/Splash_View.dart/Splash_Screen.dart';

void main() {
  runApp(const MainWidget());
}

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: LoginScreen(),
    );
  }
}
