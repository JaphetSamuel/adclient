import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/explorer_controller.dart';

class ExplorerView extends GetView<ExplorerController> {
  const ExplorerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        VxScrollHorizontal(
            child: Row(
              children: [
                ChoiceChip(label: Text("Tout"), selected: false),
                ChoiceChip(label: Text("Studio Meublé"), selected: false),
                ChoiceChip(label: Text("Colocation"), selected: false),
              ]
            )
        ),
      ],
    );
  }
}
