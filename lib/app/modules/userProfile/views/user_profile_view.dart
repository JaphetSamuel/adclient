import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controllers/user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController> {
   UserProfileView({Key? key}) : super(key: key);
  @override
TextEditingController nom = TextEditingController();
   final ImagePicker _picker = ImagePicker();
   XFile? _image;

   Future<void> choosePicture() async {
     final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

       _image = image;

   }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Stack(
            children: [
              Center(
                  child:  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/background.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(100)
                    ),
                  ),
              ),

              Positioned(
                  top: 55,
                  right: 140,
                  child:  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(color: Colors.blue,
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: IconButton(onPressed: (){
                      choosePicture();
                    }, icon: Icon(Icons.photo_camera_rounded, size: 20,)),
                  ))
            ],
          ),

          CustumTextField(
            labelText: 'Nom',
            controller: nom,
            placeholder: 'Ibrahima Mahamadou Ali',
          ),
          SizedBox(height: 20,),
          CustumTextField(
            labelText: 'Telephone',
            controller: nom,
            prefixIcon: Icons.info_outlined,
            placeholder: '+225 07 87995058',
          ),
        ],
      )
    );
  }
}




class CustumTextField extends StatelessWidget {
  final String labelText;
  final TextStyle labelStyle;
  final TextEditingController controller;
  final IconData? prefixIcon;
  final String? placeholder;

  const CustumTextField({
    Key? key,
    required this.labelText,
    this.labelStyle = const TextStyle(fontWeight: FontWeight.bold),
    required this.controller,
    this.prefixIcon,
    this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labelText, style: labelStyle),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              suffixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              hintText: placeholder,
            ),
          ),
        ],
      ),
    );
  }
}

