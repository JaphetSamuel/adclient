import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:velocity_x/velocity_x.dart';

class CommentTile extends StatefulWidget {
  const CommentTile({Key? key}) : super(key: key);

  @override
  State<CommentTile> createState() => _CommentTileState();
}

class _CommentTileState extends State<CommentTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Shimmer(
        gradient:  LinearGradient(colors: [Colors.blueGrey,Colors.white,Colors.blueGrey]),
        child: SizedBox(height: 30, width: 30,).color(Colors.grey),
        period: Duration(milliseconds: 4000),
      ),
      title: Shimmer(
        period: Duration(milliseconds: 4000),
        gradient: LinearGradient(colors: [Colors.blueGrey,Colors.white,Colors.blueGrey]),
        child: SizedBox(height: 16,).color(Colors.grey),
      ),
    );
  }
}
