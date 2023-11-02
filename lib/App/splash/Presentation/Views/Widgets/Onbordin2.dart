import 'package:bayte/App/Core/Styles/text_Style.dart';
import 'package:bayte/App/splash/Presentation/Views/Widgets/customaButton.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onbording2 extends StatelessWidget {
  const Onbording2({
    super.key,
    required GlobalKey<IntroductionScreenState> introKey,
  }) : _introKey = introKey;

  final GlobalKey<IntroductionScreenState> _introKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/Delivery vector 2.png',
          height: MediaQuery.of(context).size.height * .4,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .065,
        ),
        Text(
          'Fast Delivery',
          style: Txtstyle.style25s(context: context),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .074,
          width: MediaQuery.of(context).size.width * .79,
          child: const Text(
            'Fast food delivery to your home, office wherever you are',
            textAlign: TextAlign.center,
          ),
        ),
        CustomButton(
          title: 'Next',
          onTap: () {
            _introKey.currentState?.next();
          },
        )
      ],
    );
    ;
  }
}
