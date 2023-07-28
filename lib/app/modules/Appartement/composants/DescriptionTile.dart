import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DescriptionTile extends StatefulWidget {
  const DescriptionTile({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  State<DescriptionTile> createState() => _DescriptionTileState();
}

class _DescriptionTileState extends State<DescriptionTile> {
  bool _expanded = false;

  void expanded(){
    setState(() {
      _expanded = !_expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:
          "A propos de cet appartement".text.fontWeight(FontWeight.w700).make().py4(),
      subtitle: Text.rich(TextSpan(children: [
        if(!_expanded) TextSpan(text: widget.text.substring(1, 80)),
        if(_expanded) TextSpan(text: widget.text),
        WidgetSpan(child: GestureDetector(
          onTap: expanded,
          child: const Text("  En savoir plus", style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.bold
          ),),
        ))
      ])),

    );
  }
}
