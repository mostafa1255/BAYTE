import 'package:bayte/App/Core/Styles/App_Colors.dart';
import 'package:bayte/App/Core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.device,
    required this.hinttext,
    required this.securPass,
    required this.stringController,
  });
  final bool securPass;
  final TextEditingController stringController;
  final Size device;
  final String hinttext;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: device.width * 0.88,
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        controller: stringController,
        obscureText: securPass,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                vertical: device.height * 0.031,
                horizontal: device.width * 0.06),
            fillColor: AppColors.kGreyColor,
            filled: true,
            hintText: hinttext,
            hintStyle:
                Txtstyle.style14(context: context).copyWith(color: Colors.grey),
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30))),
      ),
    );
  }
}
