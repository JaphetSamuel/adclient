import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../composants/TopCenterBar.dart';

class WizardPickDate extends StatelessWidget {
  const WizardPickDate({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Align(
      child: DatePickerDialog(initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(const Duration(days: 2)),
        lastDate: DateTime.now().add(const Duration(days: 10)),
        helpText: "Choisissez une date",
      ),
    );
  }
}
