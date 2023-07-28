import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  const ProfilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.account_circle_sharp,
              size: 40,
              color: Colors.grey,
            ),
            title: Text("Nom de l'utilisateur"),
            subtitle: [
              const Icon(Icons.phone),
              Text("+225 23 24 15 48 22")
            ].hStack(),
          ).px(40),
          SizedBox(height: 20,),
          const SizedBox(height: 20,),
          const ListTile(
            title: Text("Donnez-nous votre avis"),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent,),
          ),
          const ListTile(
            title: Text("Aides et service clientèle"),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent,),
          ),
          const ListTile(
            title: Text("Condition générales"),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent,),
          ),
          const ListTile(
            title: Text("Paramètre de sécurité"),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent,),
          ),
          const ListTile(
            title: Text("Supprimer mon compte"),
            trailing: Icon(Icons.keyboard_arrow_right, color: Colors.redAccent,),
          ),
          Expanded(
            flex: 1,
              child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: (){
                Get.toNamed('/auth');
              }, child:const Text("Déconnexion")),
              trademark()
            ],
          ))
        ],
      )
    );
  }
  Widget trademark(){
    return const Column(
      children: [
        SizedBox(
          width: 345,
          height: 52,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: '© 2022 Adress, Inc v01.0.1\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 18,
                  ),
                ),
                TextSpan(
                  text: 'Powered by ',
                  style: TextStyle(
                    color: Color(0xFF98A6B3),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 18,
                  ),
                ),
                TextSpan(
                  text: 'Adressrecords',
                  style: TextStyle(
                    color: Color(0xFF111937),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 18,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
