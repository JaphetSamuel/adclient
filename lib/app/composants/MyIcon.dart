import 'package:flutter/material.dart';

class MyIcon extends StatefulWidget {

  MyIcon(
      {Key? key,
      this.active = true,
        this.onTap,
      required this.activeIcon,
      required this.inactiveIcon,
      })
      : super(
          key: key,
        );

  MyIcon.simple({Key? key,required Widget icon, this.onTap}): super(key:key){
    active = true;
    activeIcon = icon;
    inactiveIcon = icon;
  }

  late bool active;
  late Widget activeIcon;
  late Widget inactiveIcon;
  late ValueChanged<bool>? onTap;


  @override
  State<MyIcon> createState() => _MyIconState();
}

class _MyIconState extends State<MyIcon> {
  void toggle() {
    setState(() {
      this.widget.active = !this.widget.active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        widget.onTap!(widget.active);
      },
      child: Container(
          width: 48,
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.black.withOpacity(0)),
          child: widget.active
              ? widget.activeIcon
              : widget.inactiveIcon),
    );
  }
}
