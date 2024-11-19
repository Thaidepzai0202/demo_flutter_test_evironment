import 'package:flutter/material.dart';
import 'package:styles/style/style.dart';

class SpecificAppointment extends StatelessWidget {
  final String name;
  final String location;
  final DateTime dateTime;

  const SpecificAppointment(
      {super.key,
      required this.name,
      required this.location,
      required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const  EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
          color: theme.color.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_name(), _time()],
      ),
    );
  }

  Widget _name() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.star,
              color: theme.color.primaryColor,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              name,
              style: theme.font.t16B,
            )
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          location,
          style: theme.font.t16M
              .copyWith(color: theme.color.grey.withOpacity(0.5)),
        )
      ],
    );
  }

  Widget _time() {
    return Container(
      decoration: BoxDecoration(
          color: theme.color.background,
          borderRadius: BorderRadius.circular(6)),
      padding: const EdgeInsets.all(12),
      child: Text("${dateTime.hour}:${dateTime.minute}",style: theme.font.t14B.copyWith(color: theme.color.purpleAccent),),
    );
  }
}
