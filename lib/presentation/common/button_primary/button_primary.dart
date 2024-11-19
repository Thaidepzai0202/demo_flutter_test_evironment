import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styles/style/style.dart';

class ButtonPrimary extends StatelessWidget {
  Widget? icon;
  String? text;
  Function()? onTap;

  ButtonPrimary({super.key, this.onTap, this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          padding: const EdgeInsets.symmetric(vertical: 18),
          decoration: BoxDecoration(
              color: theme.color.primaryColor,
              borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ?? const SizedBox(),
              text != null ? Text(text!,style: theme.font.textPrimaryButtonStyle.copyWith(color: theme.color.background),) : const SizedBox()
            ],
          )),
    );
  }
}
