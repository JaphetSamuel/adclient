import 'package:adclient/app/composants/TopCenterBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class WizardChoiceLocation extends StatefulWidget {
  WizardChoiceLocation({Key? key,required this.onChanged}) : super(key: key);

  late TextEditingController searchController = TextEditingController();
  late ValueChanged<String> onChanged;

  @override
  State<WizardChoiceLocation> createState() => _WizardChoiceLocationState();
}

class _WizardChoiceLocationState extends State<WizardChoiceLocation> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 100),
        backgroundColor: Theme.of(context).colorScheme.background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Column(
          children: [
            const TopCenterBar(),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.location_searching),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.keyboard_double_arrow_right_rounded),
                  onPressed: (){
                    widget.onChanged(widget.searchController.text);
                  }
                ),
                border: OutlineInputBorder(),
                labelText: 'Location',
              ),
              ),
            Expanded(
              child: ListView(
                children: [
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
