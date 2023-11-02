import 'package:bayte/App/Core/Styles/text_Style.dart';
import 'package:bayte/App/splash/Presentation/Views/Widgets/customaButton.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onbording1 extends StatelessWidget {
  const Onbording1({
    super.key,
    required GlobalKey<IntroductionScreenState> introKey,
  }) : _introKey = introKey;

  final GlobalKey<IntroductionScreenState> _introKey;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/onbording 1.png',
          height: MediaQuery.of(context).size.height * .4,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .065,
        ),
        Text(
          'Find Food You Love',
          style: Txtstyle.style25s(context: context),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .02,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .074,
          width: MediaQuery.of(context).size.width * .79,
          child: const Text(
            'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
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
  }
}
