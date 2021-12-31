import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:intl/intl.dart';

import '../constants/spacing_sizes.dart';

class DatePicker extends StatelessWidget {
  TextEditingController controller;
  String placeholder;
  DatePicker({Key? key, required this.controller, required this.placeholder})
      : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.date_range,
            ),
            contentPadding: EdgeInsets.symmetric(
                vertical: SpacingSizes.s8, horizontal: SpacingSizes.s24),
            labelText: placeholder,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xFFe2e2e2)),
            )),
        onTap: () async {
          final datePicker = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1980),
              lastDate: DateTime.now());

          if (datePicker != null) {
            final formattedDate = DateFormat('yyyy-MM-dd').format(datePicker);
            controller.value = TextEditingValue(text: formattedDate);
          }
        },
      );
}
