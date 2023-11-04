import 'package:bayte/App/Presentation/Views/Screens/Splash_View.dart/Splash_Screen.dart';
import 'package:flutter/material.dart';

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
      home:SplashView() ,
    );
  }
}