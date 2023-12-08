import 'package:auto_route/auto_route.dart';
import 'package:birthflow/src/config/router/app_router.dart';
import 'package:flutter/material.dart';

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({
    super.key,
    required this.partographId,
    required this.title,
    required this.subtitle,
  });

  final int partographId;
  final String title;
  final String subtitle;

  @override
  State<ListItemWidget> createState() => _ListItemState();
}

class _ListItemState extends State<ListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleAlignment: ListTileTitleAlignment.center,
      title: Text(widget.title),
      trailing: const SizedBox(
        width: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('01/01/2023'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (true) Icon(Icons.push_pin),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        context.router.push(
          PartographRoute(
            partographId: widget.partographId,
          ),
        );
      },
      subtitle: Text(widget.subtitle),
      onLongPress: () => showModalBottomSheet<void>(
        context: context,
        showDragHandle: true,
        builder: (BuildContext context) {
          return SizedBox(
            height: 120,
            child: Center(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.push_pin),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
