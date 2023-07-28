import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:velocity_x/velocity_x.dart';

Widget EmptyReservationCard({Callback? onClick}) {
  return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Vous n'avez pas de reservation en attente",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          "Créer un plan de reservation dès maintenant".text.make(),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: onClick,
                child: const Text(
                  "Explorer les locals disponibles",
                )),
          )
        ],
      ).p8());
}