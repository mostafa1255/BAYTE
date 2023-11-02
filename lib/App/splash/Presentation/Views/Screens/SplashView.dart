import 'package:bayte/App/Core/Styles/App_Colors.dart';
import 'package:bayte/App/Core/Styles/text_Style.dart';
import 'package:bayte/App/splash/Presentation/Views/Screens/onbordingView.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return Onbordingview();
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

class AppName extends StatelessWidget {
  const AppName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'B',
          style: Txtstyle.style30(context: context)
              .copyWith(color: const Color(0xff75432E)),
        ),
        Text(
          'AYTE',
          style: Txtstyle.style30(context: context)
              .copyWith(color: AppColors.kMainColor),
        ),
      ],
    );
  }
}

class AppIcon extends StatelessWidget {
  const AppIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset(
      'assets/images/mainlogo.png',
      height: MediaQuery.of(context).size.height * .17,
    ));
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/Background icons.png',
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );
  }
}
