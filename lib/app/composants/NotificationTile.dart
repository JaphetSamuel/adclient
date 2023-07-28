import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../modules/Notif/notification_model.dart';

class NotificationTile extends StatefulWidget {
  NotificationTile({Key? key, required this.notification, this.isNew = false})
      : super(key: key);

  final Notifications notification;

  final bool isNew;

  @override
  State<NotificationTile> createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      expandedAlignment: Alignment.centerLeft,
      backgroundColor: Theme.of(context).colorScheme.onSecondary,
      leading: [
        if (widget.isNew)
          VxCapsule(
            backgroundColor: Colors.red,
            width: 9,
            height: 9,
          ).px8(),
        Image.network(
          "https://via.placeholder.com/48x48",
          errorBuilder: (context, object, trace) {
            return const Center(child: Icon(Icons.error));
          },
        )
      ].hStack(alignment: MainAxisAlignment.start),
      title: Text(widget.notification.titre!),
      children: [
        Text(widget.notification.details!.s1!),
      ],
    );
  }
}
