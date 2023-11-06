import 'dart:math';

import 'package:bayte/App/Core/Styles/App_Colors.dart';
import 'package:bayte/App/Core/Styles/text_Style.dart';
import 'package:bayte/App/Presentation/Views/Screens/Auth_Screens/Login_Screen/widgets/CustomTextFormField.dart';
import 'package:flutter/material.dart';

import '../../../../Widgets/CustomElevatedButton.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    Size device = MediaQuery.sizeOf(context);
    return Padding(
      padding: EdgeInsets.only(
          left: device.width * 0.03,
          right: device.width * 0.03,
          top: device.height * 0.035),
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: device.height * 0.04,
          ),
          Center(
            child: Text(
              "Login",
              style: Txtstyle.style30(context: context),
            ),
          ),
          SizedBox(
            height: device.height * 0.02,
          ),
          Center(
            child: Text(
              "Add your details to login",
              style: Txtstyle.style14(context: context)
                  .copyWith(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: device.height * 0.06,
          ),
          CustomTextFormField(
              device: device,
              hinttext: "Your Email",
              securPass: false,
              stringController: TextEditingController()),
          SizedBox(
            height: device.height * 0.045,
          ),
          CustomTextFormField(
              device: device,
              hinttext: "Your Password",
              securPass: false,
              stringController: TextEditingController()),
          SizedBox(
            height: device.height * 0.045,
          ),
          SizedBox(
            width: device.width * 0.85,
            child: CustomElevatedButton(
              color: AppColors.kMainColor,
              widget: const Center(
                child: Text("Login"),
              ),
              device: device,
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: device.height * 0.04,
          ),
          Center(
            child: Text(
              "Forgot your password?",
              style: Txtstyle.style14(context: context)
                  .copyWith(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: device.height * 0.055,
          ),
          Center(
            child: Text(
              "or Login With",
              style: Txtstyle.style14(context: context)
                  .copyWith(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: device.height * 0.033,
          ),
          SizedBox(
            width: device.width * 0.85,
            child: CustomElevatedButton(
              color: AppColors.kblueColor,
              widget: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Login with Facebook")],
                ),
              ),
              device: device,
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: device.height * 0.035,
          ),
          SizedBox(
            width: device.width * 0.85,
            child: CustomElevatedButton(
              color: AppColors.kredColor,
              widget: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Login with Google")],
                ),
              ),
              device: device,
              onPressed: () {},
            ),
          ),
        ],
      )),
    );
  }
}
