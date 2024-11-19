import 'package:demo_flutter_test_evironment/presentation/home/widget/specific_appointment.dart';
import 'package:demo_flutter_test_evironment/presentation/home/widget/title_appointment.dart';
import 'package:demo_flutter_test_evironment/presentation/sale_handbook/sale_handbook_route.dart';
import 'package:flutter/material.dart';
import 'package:styles/style/style.dart';

import '../../widget/title_note_right.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  int select = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Lịch hẹn", style: theme.font.t24w900),
              TitleNoteRight(
                content: "Xem thêm",
                valueNumber: 25,
                onTap: () {
                  SaleHandbookRoute.push();
                },
              )
            ],
          ),
        ),
        _mainAppointment()
      ],
    );
  }

  void _update(int value) {
    setState(() {
      select = value;
    });
  }

  Widget _mainAppointment() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 18),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              children: [
                TitleAppointment(
                  dateTime: DateTime(2024, 9, 12),
                  quantity: 5,
                  isSelect: select == 1,
                  ontap: () {
                    _update(1);
                  },
                ),
                TitleAppointment(
                  dateTime: DateTime(2024, 9, 15),
                  quantity: 1,
                  isSelect: select == 2,
                  ontap: () {
                    _update(2);
                  },
                ),
                TitleAppointment(
                  dateTime: DateTime(2024, 9, 16),
                  quantity: 1,
                  isSelect: select == 3,
                  ontap: () {
                    _update(3);
                  },
                ),
                TitleAppointment(
                  dateTime: DateTime(2024, 9, 17),
                  quantity: 1,
                  isSelect: select == 4,
                  ontap: () {
                    _update(4);
                  },
                ),
                TitleAppointment(
                  dateTime: DateTime(2024, 9, 18),
                  quantity: 1,
                  isSelect: select == 5,
                  ontap: () {
                    _update(5);
                  },
                ),
                TitleAppointment(
                  dateTime: DateTime(2024, 9, 19),
                  quantity: 1,
                  isSelect: select == 6,
                  ontap: () {
                    _update(6);
                  },
                ),
                TitleAppointment(
                  dateTime: DateTime(2024, 9, 20),
                  quantity: 1,
                  isSelect: select == 7,
                  ontap: () {
                    _update(7);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SpecificAppointment(
              name: "Nguyễn Thế Thái",
              location: "Hai bà trưng",
              dateTime: DateTime.now()),
          SpecificAppointment(
              name: "Nguyễn Thế Thái",
              location: "Hai bà trưng",
              dateTime: DateTime.now()),
          SpecificAppointment(
              name: "Nguyễn Thế Thái",
              location: "Hai bà trưng",
              dateTime: DateTime.now()),
          SpecificAppointment(
              name: "Nguyễn Thế Thái",
              location: "Hai bà trưng",
              dateTime: DateTime.now()),
        ],
      ),
    );
  }
}
