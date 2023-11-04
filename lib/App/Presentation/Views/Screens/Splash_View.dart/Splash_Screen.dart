import 'package:flutter/material.dart';
import 'widgets/AppName.dart';
import '../Onbording_View/onbordingView.dart';
import 'widgets/AppIcon.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return const Onbordingview();
        },
      ));
    });
    return const Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppIcon(),
              AppName(),
            ],
          ),
        ],
      ),
    );
  }
}
