import 'package:bayte/App/splash/Presentation/Views/Screens/SplashView.dart';
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