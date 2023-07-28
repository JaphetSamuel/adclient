import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';
import 'package:velocity_x/velocity_x.dart';
import '../controllers/auth_controller.dart';

import '../../../config/auth.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: "Inscription".text.make(),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close),
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          SizedBox(
            height: 100,
            child: Obx(() => controller.authMode.value == AuthMode.PHONE
                ? _phoneForm()
                : _emailForm()),
          ),
          //make large button
          MaterialButton(
            onPressed: () {
              controller.cancel();
            },
            child: const Text(
              "Continuer",
              style: TextStyle(fontSize: 20),
            ),
            minWidth: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.red,
            textColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ).pSymmetric(v: 20, h: 20),

          //separator
          const Divider(
            color: Colors.grey,
            height: 1,
            thickness: 1,
            indent: 0,
            endIndent: 0,
          ).pSymmetric(v: 50),
          GetBuilder(
              id: 'pageMode',
              builder: (AuthController controller) {
                return [
                  if (email_auth && controller.authMode.value == AuthMode.PHONE)
                    OutlinedButton(
                        onPressed: () =>
                            controller.changeAuthMode(AuthMode.EMAIL),
                        child: HStack([
                          const Icon(
                            Ionicons.mail,
                            color: Colors.grey,
                          ).px2(),
                          "Connexion avec email".text.make()
                        ])).py4(),
                  if (controller.authMode.value == AuthMode.EMAIL)
                    OutlinedButton(
                        onPressed: () =>
                            controller.changeAuthMode(AuthMode.PHONE),
                        child: HStack([
                          const Icon(
                            Icons.phone,
                            color: Colors.grey,
                          ).px2(),
                          "Connexion avec numero de telephone".text.make()
                        ])).py4()
                ].vStack();
              }),
          if (google_auth)
            OutlinedButton(
                onPressed: () {},
                child: HStack([
                  const Icon(Ionicons.logo_google).px2(),
                  "Connexion avec Google".text.make()
                ])).py4(),
          if (facebook_auth)
            OutlinedButton(
                onPressed: () {},
                child: HStack([
                  const Icon(
                    Ionicons.logo_facebook,
                    color: Colors.blue,
                  ).px2(),
                  "Connexion avec facebook".text.make()
                ])).py4(),
          const Text(
              "By continuing, you agree to the terms of use of Adress. The Adress privacy notice describes how your data is processed.")
        ],
      ).px8(),
    );
  }

  Widget _phoneForm() {
    return Column(
      children: [
        "Votre numero de telephone:".text.bold.make().py8(),
        TextField(
          keyboardType: TextInputType.phone,
          controller: controller.phoneController,
          decoration: const InputDecoration(
            hintText: "Ex: 0123456789",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            prefixIcon: Icon(Icons.phone),
          ),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10)
          ],
        )
      ],
    );
  }

  Widget _emailForm() {
    return Column(
      children: [
        "Votre adresse mail:".text.bold.make().py8(),
        TextField(
          controller: controller.emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            hintText: "Ex: exemple@xyz.abc",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            prefixIcon: Icon(Icons.email),
          ),
        )
      ],
    );
  }
}
