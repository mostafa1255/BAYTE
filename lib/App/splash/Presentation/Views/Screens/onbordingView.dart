import 'package:bayte/App/Core/Styles/App_Colors.dart';
import 'package:bayte/App/Core/Styles/text_Style.dart';
import 'package:bayte/App/splash/Presentation/Views/Widgets/Onbordin2.dart';
import 'package:bayte/App/splash/Presentation/Views/Widgets/Onbording1.dart';
import 'package:bayte/App/splash/Presentation/Views/Widgets/Onbording3.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onbordingview extends StatefulWidget {
  const Onbordingview({super.key});

  @override
  State<Onbordingview> createState() => _OnbordingviewState();
}

class _OnbordingviewState extends State<Onbordingview> {
  final _introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      // 2. Pass that key to the `IntroductionScreen` `key` param
      key: _introKey,
      pages: [
        PageViewModel(
            titleWidget:
                SizedBox(height: MediaQuery.of(context).size.height * .1),
            bodyWidget: Onbording1(introKey: _introKey)),
        PageViewModel(
            titleWidget:
                SizedBox(height: MediaQuery.of(context).size.height * .1),
            bodyWidget: Onbording2(introKey: _introKey)),
        PageViewModel(
            titleWidget:
                SizedBox(height: MediaQuery.of(context).size.height * .1),
            bodyWidget: Onbording3(introKey: _introKey)),
      ],
      showNextButton: false,
      showDoneButton: false,
      dotsDecorator: const DotsDecorator(
        activeColor: AppColors.kMainColor,
      ),
    );
  }
}
