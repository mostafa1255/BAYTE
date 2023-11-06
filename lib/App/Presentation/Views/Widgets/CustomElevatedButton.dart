import 'package:flutter/material.dart';

import '../../../Core/Styles/App_Colors.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.device,
    this.onPressed,
    required this.widget, required this.color,
  });

  final Size device;
  final void Function()? onPressed;
  final Widget widget;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                 MaterialStatePropertyAll(color),
            minimumSize: MaterialStatePropertyAll(
                Size(device.width * 0.5, device.height * 0.075)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28)))),
        onPressed: onPressed,
        child: widget);
  }
}
