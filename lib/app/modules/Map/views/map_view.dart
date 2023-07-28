import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';

import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

import '../controllers/map_controller.dart';

class MapView extends GetView<MapsController> {
  const MapView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        center: LatLng(5.329519,-4.027100 ),
        zoom: 13,
        maxZoom: 15,
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
          subdomains: const ['a', 'b', 'c'],
        ),
        MarkerClusterLayerWidget(
          options: MarkerClusterLayerOptions(
            maxClusterRadius: 45,
            size: const Size(40, 40),
            anchor: AnchorPos.align(AnchorAlign.center),
            fitBoundsOptions: const FitBoundsOptions(
              padding: EdgeInsets.all(50),
              maxZoom: 15,
            ),
            builder: (context, markers) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue),
                child: Center(
                  child: Text(
                    markers.length.toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
