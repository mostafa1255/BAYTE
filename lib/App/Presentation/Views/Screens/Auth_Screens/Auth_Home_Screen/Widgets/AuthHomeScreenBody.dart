import 'package:bayte/App/Core/Styles/App_Image.dart';
import 'package:flutter/material.dart';

class AuthHomeScreenBody extends StatelessWidget {
  const AuthHomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: device.width,
                child: Image.asset(
                  AppImage.shapedsubtraction,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                height: device.height * 0.9,
                left: device.width * 0.38,
                child: SizedBox(
                  width: device.width * 0.24,
                  child: Image.asset(AppImage.appIcon),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
