import 'package:bayte/App/Core/Styles/text_Style.dart';
import 'package:bayte/App/splash/Presentation/Views/Widgets/customaButton.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onbording3 extends StatelessWidget {
  const Onbording3({
    super.key,
    required GlobalKey<IntroductionScreenState> introKey,
  }) : _introKey = introKey;

  final GlobalKey<IntroductionScreenState> _introKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Live tracking vector 3.png',
          height: MediaQuery.of(context).size.height * .4,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .065,
        ),
        Text(
          'Live Tracking',
          style: Txtstyle.style25s(context: context),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .074,
          width: MediaQuery.of(context).size.width * .79,
          child: const Text(
            'Real time tracking of your food on the app once you placed the order',
            textAlign: TextAlign.center,
          ),
        ),
        CustomButton(
          title: 'Next',
          onTap: () {},
        )
      ],
    );
  }
}
