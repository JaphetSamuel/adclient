
import 'package:adclient/app/modules/Map/views/map_view.dart';
import 'package:flutter/material.dart';
import '';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../../composants/TopCenterBar.dart';
import '../controllers/location_controller.dart';

class LocationView extends GetView<LocationController> {
  const LocationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          const Expanded(child: MapView()),
          DraggableScrollableSheet(
              maxChildSize: 0.8,
              minChildSize: 0.2,
              initialChildSize: 0.3,
              builder: (context, scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    height: Get.height * 0.8,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: [
                      const TopCenterBar(),
                      TextField(
                        controller: controller.searchController,
                        decoration: const InputDecoration(
                            hintText: "Search",
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none),
                        textInputAction: TextInputAction.search,
                      ),
                      const ListTile(
                        leading: Icon(Icons.history),
                        title: Text('Abidjan'),
                      )
                    ].vStack(alignment: MainAxisAlignment.start, crossAlignment: CrossAxisAlignment.center),
                  ),
                );
              })
        ],
      ),
    );
  }
}
