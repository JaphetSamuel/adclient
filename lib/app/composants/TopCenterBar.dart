import 'package:flutter/material.dart';

class TopCenterBar extends StatelessWidget {
  const TopCenterBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 5,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10)),
    );
  }
}