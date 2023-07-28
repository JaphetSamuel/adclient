import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:velocity_x/velocity_x.dart';

class ComoditeTile extends StatefulWidget {
  const ComoditeTile({Key? key}) : super(key: key);

  @override
  State<ComoditeTile> createState() => _ComoditeTileState();
}

class _ComoditeTileState extends State<ComoditeTile> {

  List<Widget> _list = [ListTile(
    title: Text("Wifi"),
    trailing: Icon(Icons.wifi),
  ),
    ListTile(
      title: Text("CanalPlus"),
      trailing: Icon(Icons.tv),
    ),
    ListTile(
      title: Text("Netflix"),
      trailing: Icon(Ionicons.videocam),
    ),
    ListTile(
      title: Text("Climatisation"),
      trailing: Icon(Icons.air),
    ),
    ListTile(
      title: Text("Bouquet"),
      trailing: Icon(Icons.wifi),
    )];

  int showed = 3;
  bool _expanded = false;
  String _label = "+ Voir plus";

  void expand(){
    setState(() {
      _expanded = !_expanded;
      showed = _expanded ? _list.length : 3;
      _label = _expanded ? "- Voir moin":"+ Voir plus" ;
    });
  }


  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: "Comodités".text.fontWeight(FontWeight.w700).make().py4(),
      subtitle: ListBody(
        children: [
          ..._list.take(showed),
          GestureDetector(
            onTap: expand,
            child: Text("${_label} (${_list.length.toString()})", style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold
            ),),
          )
        ],
      ),
    );
  }
}
