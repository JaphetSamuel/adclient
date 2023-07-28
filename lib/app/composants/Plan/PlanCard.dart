import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../modules/Plan/views/plan_details_view.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(PlanDetailsView(
          key: Key(Random(10).toString()),
        ));
      },
      child: Card(
        elevation: 8,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Image.network(
                        "https://via.placeholder.com/187x139",
                        fit: BoxFit.cover,
                        errorBuilder: _onError,
                      )),
                  Positioned(
                      top: 0,
                      right: 0,
                      child: Image.network(
                        "https://via.placeholder.com/187x80",
                        fit: BoxFit.cover,
                        errorBuilder: _onError,
                      )),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image.network(
                        "https://via.placeholder.com/187x80",
                        fit: BoxFit.cover,
                        errorBuilder: _onError,
                      )),
                ],
              ),
            ),
            Text(
              "Anniversaire de leandre",
              style: TextStyle(fontSize: 18),
            ).py(10)
          ],
        ),
      ).h20(Get.context!).p(8),
    );
  }

  Widget _onError(BuildContext context, Object object, StackTrace? stackTrace){
    return SizedBox(height: 80,);
  }
}
