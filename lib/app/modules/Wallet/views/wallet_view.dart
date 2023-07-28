import 'package:adclient/app/modules/Wallet/composants/EmptyTransactionView.dart';
import 'package:adclient/app/modules/Wallet/composants/TransactionTile.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/wallet_controller.dart';

class WalletView extends GetView<WalletController> {
  const WalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portefeuille'),
        centerTitle: true,
        elevation: 1.0,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(8),
            height: 750,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.onSecondaryContainer),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                " ${controller.balance} XOF"
                    .text
                    .color(Colors.redAccent)
                    .size(30)
                    .make(),
                "${controller.berry} Berry".text.size(15).make().py(8),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                            onPressed: () {},
                            child: Text("Ajouter de l'argent"))
                        .px2(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("Retirer de l'argent",
                          style: TextStyle(color: Colors.red)),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.red[100]),
                    ).px2(),
                  ],
                )
              ],
            ),
          ).p(8)),
          Expanded(
              flex: 3,
              child: ListView(
                children: const [
                  ListTile(
                      title: Text(
                    "Transactions",
                  )),
                  TransactionTile(),
                  TransactionTile(),
                  TransactionTile(),
                  TransactionTile(),
                ],
              ))
        ],
      ),
    );
  }
}
