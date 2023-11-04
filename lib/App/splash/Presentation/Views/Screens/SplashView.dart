import 'package:bayte/App/Core/Styles/App_Colors.dart';
import 'package:bayte/App/Core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

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
