import 'package:flutter/material.dart';
import 'package:styles/style/style.dart';

class InformationPercent extends StatelessWidget {
  final double x;
  final double y;
  final String title;

  const InformationPercent(
      {super.key, required this.x, required this.y, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      padding: const EdgeInsets.only(left: 16, right: 6,top: 6,bottom: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          border:
              Border.all(width: 1, color: theme.color.grey.withOpacity(0.1))),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [_title(), const Spacer(), _value(), _percent()],
      ),
    );
  }

  Widget _title() {
    return Text(
      title,
      style: theme.font.t14M,
    );
  }

  Widget _value() {
    return Text(
      "${x.toInt()}/${y.toInt()}",
      style: theme.font.t14B.copyWith(color: theme.color.blue),
    );
  }

  Widget _percent() {
    if (y == 0) {
      return Text("0");
    }

    int percent = ((x / y) * 100).toInt();

    return Container(
      height: 36,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: theme.color.grey.withOpacity(0.2)
      ),
      child: Text(
        "$percent%",
        style: theme.font.t14B.copyWith(color: theme.color.purpleAccent),
      ),
    );
  }
}
