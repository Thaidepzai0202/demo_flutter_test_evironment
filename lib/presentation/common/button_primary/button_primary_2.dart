import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:styles/style/style.dart';

class ButtonPrimary2 extends StatelessWidget {
  Widget? icon;
  String? text;
  Function()? onTap;

  ButtonPrimary2({super.key, this.onTap, this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: theme.color.textPrimary2Color
            ),
              borderRadius: BorderRadius.circular(50)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ?? const SizedBox(),
              text != null ? Text(text!,style: theme.font.textPrimaryButtonStyle.copyWith(color: theme.color.textPrimary2Color),) : const SizedBox()
            ],
          )),
    );
  }
}
