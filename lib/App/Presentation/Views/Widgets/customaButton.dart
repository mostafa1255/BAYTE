import 'package:bayte/App/Core/Styles/App_Colors.dart';
import 'package:bayte/App/Core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onTap,
  });
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * .8,
        height: MediaQuery.of(context).size.height * .07,
        decoration: BoxDecoration(
            color: AppColors.kMainColor,
            borderRadius: BorderRadius.circular(60)),
        child: Center(
            child: Text(
          title,
          style:
              Txtstyle.style17(context: context).copyWith(color: Colors.white),
        )),
      ),
    );
  }
}
