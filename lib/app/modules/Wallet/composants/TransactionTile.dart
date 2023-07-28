import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var context = Get.context!;
    return ListTile(
      leading: ClipOval(
        child: Image.network(
          "https://via.placeholder.com/48x48",
          fit: BoxFit.cover,
          errorBuilder: (context,object,trace){
            return const CircularProgressIndicator();
          },
        ),
      ),
      trailing: [
        "-15 Berry".text.fontWeight(FontWeight.bold).color(Colors.red).make(),
        "07:30".text.color(Colors.grey).make()
      ].vStack(),
      title: Text(
        "Deux pièce meuble",
      ),
      subtitle: Text(
        "Reservation",
      ),
    );
  }
}
